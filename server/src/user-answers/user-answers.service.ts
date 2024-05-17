import { Injectable } from '@nestjs/common';
import { CreateUserAnswerDto } from './dto/create-user-answer.dto';
import { UpdateUserAnswerDto } from './dto/update-user-answer.dto';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class UserAnswersService {

  constructor(private prisma: PrismaService) {}

  create(createUserAnswerDto: CreateUserAnswerDto) {
    return this.prisma.userAnswer.create({data: createUserAnswerDto});
  }

  findAll() {
    return this.prisma.userAnswer.findMany();
  }

  findOne(id: number) {
    return this.prisma.userAnswer.findUnique({ where: { idUserAnswer:id } });
  }

  update(id: number, updateUserAnswerDto: UpdateUserAnswerDto) {
    return this.prisma.userAnswer.update({
      where: { idUserAnswer: id },
      data: updateUserAnswerDto,
  });
  }

  remove(id: number) {
    return this.prisma.userAnswer.delete({ where: { idUserAnswer: id } });
  }
}
