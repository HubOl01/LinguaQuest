import { Injectable } from '@nestjs/common';
import { CreateStudyHistoryDto } from './dto/create-study-history.dto';
import { UpdateStudyHistoryDto } from './dto/update-study-history.dto';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class StudyHistorysService {

  constructor(private prisma: PrismaService) {}
  
  create(createStudyHistoryDto: CreateStudyHistoryDto) {
    return this.prisma.studyHistory.create({data: createStudyHistoryDto});
  }

  findAll() {
    return this.prisma.studyHistory.findMany();
  }

  findOne(id: number) {
    return this.prisma.studyHistory.findUnique({ where: { idStudyHistory:id } });
  }

  update(id: number, updateStudyHistoryDto: UpdateStudyHistoryDto) {
    return this.prisma.studyHistory.update({
      where: { idStudyHistory: id },
      data: updateStudyHistoryDto,
  });
  }

  remove(id: number) {
    return this.prisma.studyHistory.delete({ where: { idStudyHistory: id } });
  }
}
