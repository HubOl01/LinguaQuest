import { Injectable } from '@nestjs/common';
import { CreateLikeDto } from './dto/create-like.dto';
import { PrismaService } from 'src/prisma/prisma.service';
import { UpdateLikeDto } from './update-like.dto';

@Injectable()
export class LikesService {
  constructor(private prisma: PrismaService) {}
  create(createLikeDto: CreateLikeDto) {
    return this.prisma.like.create({ data: createLikeDto });
  }

  findAll() {
    return this.prisma.like.findMany();
  }

  async getLikesCountForPost(): Promise<any[]> {
    const likesCounts = await this.prisma.like.groupBy({
      by: ['postId'],
      _count: {
        idLike: true,
      },
    });
    return likesCounts.map((likeCount) => ({
      likesCount: likeCount._count.idLike,
      postId: likeCount.postId,
    }));
  }

  findOne(id: number) {
    return this.prisma.like.findUnique({
      where: { idLike: id },
    });
  }

  update(id: number, updateLikeDto: UpdateLikeDto) {
    return this.prisma.like.update({
      where: { idLike: id },
      data: updateLikeDto,
    });
  }

  remove(id: number) {
    return this.prisma.like.delete({
      where: { idLike: id },
    });
  }
}
