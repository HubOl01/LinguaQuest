import { Module } from '@nestjs/common';
import { GlobaldictionariesService } from './globaldictionaries.service';
import { GlobaldictionariesController } from './globaldictionaries.controller';
import { PrismaModule } from 'src/prisma/prisma.module';

@Module({
  controllers: [GlobaldictionariesController],
  providers: [GlobaldictionariesService],
  imports: [PrismaModule],
})
export class GlobaldictionariesModule { }
