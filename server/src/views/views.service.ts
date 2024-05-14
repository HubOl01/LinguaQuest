import { Injectable } from '@nestjs/common';
import { CreateViewDto } from './dto/create-view.dto';
import { UpdateViewDto } from './dto/update-view.dto';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class ViewsService {
  constructor(private prisma: PrismaService) {}
  create(createViewDto: CreateViewDto) {
    return this.prisma.view.create({ data: createViewDto });
  }

  async getViewsCountForPost(): Promise<any[]> {
    const viewsCounts = await this.prisma.view.groupBy({
      by: ['postId'],
      _count: {
        idView: true,
      },
    });
    return viewsCounts.map((viewCount) => ({
      likesCount: viewCount._count.idView,
      postId: viewCount.postId,
    }));
  }

  findAll() {
    return this.prisma.view.findMany();
  }

  findOne(id: number) {
    return this.prisma.view.findUnique({
      where: { idView: id },
    });
  }

  update(id: number, updateViewDto: UpdateViewDto) {
    return this.prisma.view.update({
      where: { idView: id },
      data: updateViewDto,
    });
  }

  remove(id: number) {
    return this.prisma.view.delete({
      where: { idView: id },
    });
  }
}
