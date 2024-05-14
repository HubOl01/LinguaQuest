import { ApiProperty } from '@nestjs/swagger';
import { IsNumber, IsDate } from 'class-validator';

export class CreateLikeDto {
  @ApiProperty({ required: false })
  @IsNumber()
  userId: number;
  @ApiProperty({ required: false })
  @IsNumber()
  postId: number;
  @ApiProperty({ required: true })
  @IsDate()
  date_created: Date;
}
