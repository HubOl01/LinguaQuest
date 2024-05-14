import { Module } from '@nestjs/common';
import { ViewsService } from './views.service';
import { ViewsController } from './views.controller';
import { PrismaModule } from 'src/prisma/prisma.module';

@Module({
  controllers: [ViewsController],
  providers: [ViewsService],
  imports: [PrismaModule],
})
export class ViewsModule {}
