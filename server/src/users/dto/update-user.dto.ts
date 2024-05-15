import { PartialType } from '@nestjs/mapped-types';
import { CreateUserDto } from './create-user.dto';
import { ApiProperty } from '@nestjs/swagger';
import { IsBoolean, IsNumber, IsOptional, IsString } from 'class-validator';

export class UpdateUserDto extends PartialType(CreateUserDto) {
  @ApiProperty({ required: true })
  idUser: number;

  @ApiProperty({ required: false })
  @IsString()
  @IsOptional()
  VKID?: string;

  @ApiProperty({ required: false })
  @IsString()
  @IsOptional()
  TelegramID?: string;

  @ApiProperty({ required: false, example: 'test@test.com' })
  @IsString()
  @IsOptional()
  email?: string;

  @ApiProperty({ example: 'test' })
  @IsString()
  @IsOptional()
  username: string;

  @ApiProperty({ required: false, example: 'user01' })
  @IsString()
  @IsOptional()
  idUsername?: string;

  @ApiProperty({ required: false, default: false })
  @IsBoolean()
  @IsOptional()
  isAdmin: boolean;

  @ApiProperty({ required: false, default: false })
  @IsOptional()
  isBan: boolean;

  @ApiProperty({ required: false })
  @IsOptional()
  @IsNumber()
  streak: number;

  @ApiProperty({ required: false })
  @IsOptional()
  @IsNumber()
  xp: number;

  // @ApiProperty({ required: false })
  // @IsOptional()
  date_created: Date;
}
