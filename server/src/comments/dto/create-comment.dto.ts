import { ApiProperty } from '@nestjs/swagger';
import { IsNumber, IsString, IsDate } from 'class-validator';

export class CreateCommentDto {
  @ApiProperty({ required: false })
  @IsNumber()
  userId: number;

  @ApiProperty({ required: false })
  @IsNumber()
  postId: number;

  @ApiProperty({ required: false })
  @IsString()
  content: string;

  @IsDate()
  date_created: Date;

  @IsDate()
  date_updated: Date;
}
