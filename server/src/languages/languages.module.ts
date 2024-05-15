import { Module } from '@nestjs/common';
import { LanguagesService } from './languages.service';
import { LanguagesController } from './languages.controller';
import { PrismaModule } from 'src/prisma/prisma.module';

@Module({
  controllers: [LanguagesController],
  providers: [LanguagesService],
  imports: [PrismaModule],
})
export class LanguagesModule {}
