import { Injectable } from '@nestjs/common';
import { CreateQuizDto } from './dto/create-quiz.dto';
import { UpdateQuizDto } from './dto/update-quiz.dto';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class QuizzesService {
  constructor(private prisma: PrismaService) {}

  create(createQuizDto: CreateQuizDto) {
    return this.prisma.quiz.create({ data: createQuizDto });
  }

  findAll() {
    return this.prisma.quiz.findMany();
  }

  findOne(id: number) {
    return this.prisma.quiz.findUnique({ where: { idQuiz: id } });
  }

  update(id: number, updateQuizDto: UpdateQuizDto) {
    return this.prisma.quiz.update({
      where: { idQuiz: id },
      data: updateQuizDto,
    });
  }

  remove(id: number) {
    this.prisma.quiz.delete({ where: { idQuiz: id } });
  }
}
