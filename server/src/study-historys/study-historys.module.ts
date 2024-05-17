import { Module } from '@nestjs/common';
import { StudyHistorysService } from './study-historys.service';
import { StudyHistorysController } from './study-historys.controller';
import { PrismaModule } from 'src/prisma/prisma.module';

@Module({
  controllers: [StudyHistorysController],
  providers: [StudyHistorysService],
  imports: [PrismaModule]
})
export class StudyHistorysModule {}
