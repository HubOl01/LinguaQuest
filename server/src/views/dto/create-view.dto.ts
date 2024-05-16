import { ApiProperty } from '@nestjs/swagger';
import { IsDate, IsNumber } from 'class-validator';

export class CreateViewDto {
  @ApiProperty({ required: false })
  @IsNumber()
  userId: number;
  @ApiProperty({ required: false })
  @IsNumber()
  postId: number;

  @IsDate()
  date_created: Date;
}
