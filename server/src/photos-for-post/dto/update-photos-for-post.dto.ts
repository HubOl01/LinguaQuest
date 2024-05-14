import { ApiProperty, PartialType } from '@nestjs/swagger';
import { CreatePhotosForPostDto } from './create-photos-for-post.dto';
import { IsNumber, IsString } from 'class-validator';

export class UpdatePhotosForPostDto extends PartialType(
  CreatePhotosForPostDto,
) {
  @ApiProperty({ required: true })
  @IsNumber()
  idPhoto: number;
  @ApiProperty({ required: false })
  @IsString()
  url_image: string;
  @ApiProperty({ required: false })
  @IsNumber()
  postId: number;
  @ApiProperty({ required: false })
  @IsNumber()
  userId: number;
}
