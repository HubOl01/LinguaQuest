import { Module } from '@nestjs/common';
import { CardwordsService } from './cardwords.service';
import { CardwordsController } from './cardwords.controller';
import { PrismaModule } from 'src/prisma/prisma.module';

@Module({
  controllers: [CardwordsController],
  providers: [CardwordsService],
  imports: [PrismaModule],
})
export class CardwordsModule { }
