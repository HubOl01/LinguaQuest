import { Injectable } from '@nestjs/common';
import { CreateQuizTestDto } from './dto/create-quiz-test.dto';
import { UpdateQuizTestDto } from './dto/update-quiz-test.dto';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class QuizTestsService {

  constructor(private prisma: PrismaService) {}

  create(createQuizTestDto: CreateQuizTestDto) {  
    return this.prisma.quizTest.create({data: createQuizTestDto});
  }

  findAll() {
    return this.prisma.quizTest.findMany();
  }

  findOne(id: number) {
    return this.prisma.quizTest.findUnique({ where: { idQuizTest:id } });
  }

  update(id: number, updateQuizTestDto: UpdateQuizTestDto) {
    return this.prisma.quizTest.update({
      where: { idQuizTest: id },
      data: updateQuizTestDto,
  });
  }

  remove(id: number) {
    return this.prisma.quizTest.delete({ where: { idQuizTest: id } });
  }
}
