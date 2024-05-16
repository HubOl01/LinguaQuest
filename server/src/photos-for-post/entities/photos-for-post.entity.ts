import { ApiProperty } from '@nestjs/swagger';
import { PhotoForPost } from '@prisma/client';

export class PhotosForPostEntity implements PhotoForPost {
  @ApiProperty({ required: true })
  idPhoto: number;
  @ApiProperty({ required: false })
  url_image: string;
  @ApiProperty({ required: false })
  postId: number;
  @ApiProperty({ required: false })
  userId: number;
}
