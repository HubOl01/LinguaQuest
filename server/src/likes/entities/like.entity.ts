import { ApiProperty } from '@nestjs/swagger';
import { Like } from '@prisma/client';

export class LikeEntity implements Like {
  @ApiProperty({ required: true })
  idLike: number;
  @ApiProperty({ required: false })
  userId: number;
  @ApiProperty({ required: false })
  postId: number;
  @ApiProperty({ required: true })
  date_created: Date;
}
