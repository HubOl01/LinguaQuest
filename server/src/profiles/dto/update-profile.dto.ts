import { ApiProperty, PartialType } from '@nestjs/swagger';
import { CreateProfileDto } from './create-profile.dto';
import { IsDate, IsNumber, IsOptional, IsString } from 'class-validator';

export class UpdateProfileDto extends PartialType(CreateProfileDto) {
  @ApiProperty({ required: false })
  @IsString()
  @IsOptional()
  name: string;
  @ApiProperty({ required: false })
  @IsDate()
  birthday: Date;
  @ApiProperty({ required: false })
  @IsNumber()
  userId: number;
}
