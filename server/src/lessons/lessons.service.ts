import { Injectable } from '@nestjs/common';
import { CreateLessonDto } from './dto/create-lesson.dto';
import { UpdateLessonDto } from './dto/update-lesson.dto';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class LessonsService {

  constructor(private prisma: PrismaService) {}

  create(createLessonDto: CreateLessonDto) {
    return this.prisma.lesson.create({data: createLessonDto});
  }

  findAll() {
    return this.prisma.lesson.findMany();
  }

  findOne(id: number) {
    return this.prisma.lesson.findUnique({ where: { idLesson:id } });
  }

  update(id: number, updateLessonDto: UpdateLessonDto) {
    return this.prisma.lesson.update({
      where: { idLesson: id },
      data: updateLessonDto,
  });
  }

  remove(id: number) {
    return this.prisma.lesson.delete({ where: { idLesson: id } });
  }
}
