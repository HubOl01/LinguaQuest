import { Module } from '@nestjs/common';
import { DictionariesService } from './dictionaries.service';
import { DictionariesController } from './dictionaries.controller';
import { PrismaModule } from 'src/prisma/prisma.module';

@Module({
  controllers: [DictionariesController],
  providers: [DictionariesService],
  imports: [PrismaModule],
})
export class DictionariesModule { }