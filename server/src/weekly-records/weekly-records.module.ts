import { Module } from '@nestjs/common';
import { WeeklyRecordsService } from './weekly-records.service';
import { WeeklyRecordsController } from './weekly-records.controller';
import { PrismaModule } from 'src/prisma/prisma.module';

@Module({
  controllers: [WeeklyRecordsController],
  providers: [WeeklyRecordsService],
  imports: [PrismaModule]
})
export class WeeklyRecordsModule {}
