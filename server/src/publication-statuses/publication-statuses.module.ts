import { Module } from '@nestjs/common';
import { PublicationStatusesService } from './publication-statuses.service';
import { PublicationStatusesController } from './publication-statuses.controller';
import { PrismaModule } from 'src/prisma/prisma.module';

@Module({
  controllers: [PublicationStatusesController],
  providers: [PublicationStatusesService],
  imports: [PrismaModule],
})
export class PublicationStatusesModule {}
