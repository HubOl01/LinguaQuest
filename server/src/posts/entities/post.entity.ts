import { ApiProperty } from '@nestjs/swagger';
import { Post } from '@prisma/client';

export class PostEntity implements Post {
  @ApiProperty({ required: false })
  idPost: number;
  @ApiProperty({ required: false })
  title: string;
  @ApiProperty({ required: false })
  description: string;
  @ApiProperty({ required: false, default: true })
  isDraft: boolean;
  @ApiProperty({ required: false, default: '' })
  rejectionReason: string;
  @ApiProperty({ required: false })
  date_created: Date;
  @ApiProperty({ required: false })
  date_updated: Date;
  @ApiProperty({ required: false })
  userId: number;
  @ApiProperty({ required: false, default: 3 })
  publicationStatusId: number;
}
