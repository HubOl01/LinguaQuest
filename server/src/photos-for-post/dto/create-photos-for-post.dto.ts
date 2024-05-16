import { ApiProperty } from '@nestjs/swagger';
import { IsNumber, IsString } from 'class-validator';

export class CreatePhotosForPostDto {
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
