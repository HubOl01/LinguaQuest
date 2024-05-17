import { ApiProperty, PartialType } from '@nestjs/swagger';
import { CreateAvatarDto } from './create-avatar.dto';
import { IsNumber, IsNotEmpty, IsString } from 'class-validator';

export class UpdateAvatarDto extends PartialType(CreateAvatarDto) {

    @ApiProperty({required:true})
    idAvatar: number;

    @ApiProperty()
    @IsNumber()
    @IsNotEmpty()
    userId: number;

    @ApiProperty()
    @IsString()
    @IsNotEmpty()
    url_avatar: string;

    @ApiProperty({required:false})
    date_created?: Date;

    @ApiProperty({required:false})
    date_updated?: Date
}
