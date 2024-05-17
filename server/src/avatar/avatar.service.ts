import { Injectable } from '@nestjs/common';
import { CreateAvatarDto } from './dto/create-avatar.dto';
import { UpdateAvatarDto } from './dto/update-avatar.dto';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class AvatarService {

  constructor(private prisma: PrismaService) {}
  
  create(createAvatarDto: CreateAvatarDto) {
    return this.prisma.avatar.create({data: createAvatarDto});
  }

  findAll() {
    return this.prisma.avatar.findMany();
  }

  findOne(id: number) {
    return this.prisma.avatar.findUnique({ where: { idAvatar:id } });
  }

  update(id: number, updateAvatarDto: UpdateAvatarDto) {
    return this.prisma.avatar.update({
      where: { idAvatar: id },
      data: updateAvatarDto,
  });
  }

  remove(id: number) {
    return this.prisma.avatar.delete({ where: { idAvatar: id } });
  }
}
