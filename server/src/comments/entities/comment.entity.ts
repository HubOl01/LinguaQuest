import { ApiProperty } from '@nestjs/swagger';
import { Comment } from '@prisma/client';

export class CommentEntity implements Comment {
  @ApiProperty({ required: true })
  idComment: number;
  @ApiProperty({ required: false })
  userId: number;
  @ApiProperty({ required: false })
  postId: number;
  @ApiProperty({ required: false })
  content: string;
  @ApiProperty({ required: true })
  date_created: Date;
  @ApiProperty({ required: true })
  date_updated: Date;
}
