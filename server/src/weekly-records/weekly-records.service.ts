import { Injectable } from '@nestjs/common';
import { CreateWeeklyRecordDto } from './dto/create-weekly-record.dto';
import { UpdateWeeklyRecordDto } from './dto/update-weekly-record.dto';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class WeeklyRecordsService {

  constructor(private prisma: PrismaService) {}
  
  create(createWeeklyRecordDto: CreateWeeklyRecordDto) {
    
    return this.prisma.weeklyRecord.create({data: createWeeklyRecordDto});
  }

  findAll() {
    return this.prisma.weeklyRecord.findMany();
  }

  findOne(id: number) {
    return this.prisma.weeklyRecord.findUnique({ where: { idWeeklyRecord:id } });
  }

  update(id: number, updateWeeklyRecordDto: UpdateWeeklyRecordDto) {
    return this.prisma.weeklyRecord.update({
      where: { idWeeklyRecord: id },
      data: updateWeeklyRecordDto,
  });
  }

  remove(id: number) {
    return this.prisma.weeklyRecord.delete({ where: { idWeeklyRecord: id } });
  }
}
