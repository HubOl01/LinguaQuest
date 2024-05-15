import { ApiProperty, PartialType } from '@nestjs/swagger';
import { CreateCommentDto } from './create-comment.dto';
import { IsDate, IsNumber, IsString } from 'class-validator';

export class UpdateCommentDto extends PartialType(CreateCommentDto) {
  @ApiProperty({ required: true })
  @IsNumber()
  idComment: number;

  @ApiProperty({ required: false })
  @IsNumber()
  userId: number;

  @ApiProperty({ required: false })
  @IsNumber()
  postId: number;

  @ApiProperty({ required: false })
  @IsString()
  content: string;
  @ApiProperty({ required: true })
  @IsDate()
  date_created: Date;

  @ApiProperty({ required: true })
  @IsDate()
  date_updated: Date;
}
