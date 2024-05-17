import { ApiProperty } from "@nestjs/swagger";
import { IsNotEmpty, IsNumber, IsString } from "class-validator";

export class CreateAvatarDto {

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
