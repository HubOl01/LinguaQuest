import { ApiProperty, PartialType } from '@nestjs/swagger';
import { CreateViewDto } from './create-view.dto';
import { IsNumber, IsDate } from 'class-validator';

export class UpdateViewDto extends PartialType(CreateViewDto) {
  @ApiProperty({ required: true })
  @IsNumber()
  idView: number;

  @ApiProperty({ required: false })
  @IsNumber()
  userId: number;

  @ApiProperty({ required: false })
  @IsNumber()
  postId: number;

  @IsDate()
  date_created: Date;
}
