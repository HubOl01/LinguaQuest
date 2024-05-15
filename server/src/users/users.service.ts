import { Injectable } from '@nestjs/common';
import { CreateUserDto } from './dto/create-user.dto';
import { UpdateUserDto } from './dto/update-user.dto';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class UsersService {
  constructor(private prisma: PrismaService) {}
  async create(createUserDto: CreateUserDto) {
    //  const randomId = 'user_' + Math.floor(Math.random() * 1000000).toString();
    //  const updatedDto: CreateUserDto = {
    //    ...createUserDto,
    //    idUsername: randomId,
    //  };
    const maxAttempts = 5;
    let attempts = 0;
    if (createUserDto.idUsername) {
      return await this.prisma.user.create({ data: createUserDto });
    } else {
      while (attempts < maxAttempts) {
        const randomId =
          'user_' + Math.floor(Math.random() * 1000000).toString();
        const existingUser = await this.prisma.user.findUnique({
          where: { idUsername: randomId },
        });

        if (!existingUser) {
          return this.prisma.user.create({
            data: { ...createUserDto, idUsername: randomId },
          });
        }
        attempts++;
      }
    }

    //  return this.prisma.user.create({ data: updatedDto });
    // return this.prisma.user.create({ data: createUserDto});
  }

  findAll() {
    return this.prisma.user.findMany();
  }

  findOne(id: number) {
    return this.prisma.user.findUnique({ where: { idUser: id } });
  }

  update(id: number, updateUserDto: UpdateUserDto) {
    return this.prisma.user.update({
      where: { idUser: id },
      data: updateUserDto,
    });
  }

  remove(id: number) {
    return this.prisma.user.delete({ where: { idUser: id } });
  }
}
