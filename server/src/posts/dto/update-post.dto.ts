import { ApiProperty, PartialType } from '@nestjs/swagger';
import { IsBoolean, IsDate, IsNumber, IsString } from 'class-validator';
import { CreatePostDto } from './create-post.dto';

export class UpdatePostDto extends PartialType(CreatePostDto) {
  @ApiProperty({ required: false })
  @IsNumber()
  idPost: number;
  @ApiProperty({ required: false })
  @IsString()
  title: string;
  @ApiProperty({ required: false })
  @IsString()
  description: string;
  @ApiProperty({ required: false })
  @IsBoolean()
  isDraft: boolean;
  @ApiProperty({ required: false, default: '' })
  @IsString()
  rejectionReason: string;
  @ApiProperty({ required: false })
  @IsDate()
  date_created: Date;
  @ApiProperty({ required: false })
  @IsDate()
  date_updated: Date;
  @ApiProperty({ required: false })
  @IsNumber()
  userId: number;
  @ApiProperty({ required: false, default: 3 })
  @IsNumber()
  publicationStatusId: number;
}
