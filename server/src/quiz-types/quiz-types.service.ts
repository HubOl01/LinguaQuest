import { Injectable } from '@nestjs/common';
import { CreateQuizTypeDto } from './dto/create-quiz-type.dto';
import { UpdateQuizTypeDto } from './dto/update-quiz-type.dto';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class QuizTypesService {

  constructor(private prisma: PrismaService) {}

  create(createQuizTypeDto: CreateQuizTypeDto) {
    return this.prisma.quizType.create({data: createQuizTypeDto});
  }

  findAll() {
    return this.prisma.quizType.findMany();
  }

  findOne(id: number) {
    return this.prisma.quizType.findUnique({ where: { idQuizType:id } });
  }

  update(id: number, updateQuizTypeDto: UpdateQuizTypeDto) {
    return this.prisma.quizType.update({
      where: { idQuizType: id },
      data: updateQuizTypeDto,
  });
  }

  remove(id: number) {
    return this.prisma.quizType.delete({ where: { idQuizType: id } });
  }
}
