import { ApiProperty } from "@nestjs/swagger";
import { IsDate, IsString } from "class-validator";

export class CreateGlobaldictionaryDto {

    @ApiProperty({ required: false })
    @IsString()
    content: string;
    @ApiProperty({ required: false })
    @IsString()
    translate: string;
    @ApiProperty({ required: true })
    @IsString()
    transcription: string;
    @ApiProperty({ required: true })
    @IsString()
    audiofile: string;
    @ApiProperty({ required: true })
    @IsDate()
    date_created: Date;
}
