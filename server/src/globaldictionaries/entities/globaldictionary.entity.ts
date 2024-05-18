import { ApiProperty } from "@nestjs/swagger";
import { GlobalDictionary } from "@prisma/client";

export class GlobaldictionaryEntity implements GlobalDictionary {
    idGlobalDictionary: number;
    @ApiProperty({ required: true })
    idGlobaldictionary: number;
    @ApiProperty({ required: false })
    content: string;
    @ApiProperty({ required: false })
    translate: string;
    @ApiProperty({ required: true })
    transcription: string;
    @ApiProperty({ required: true })
    audiofile: string;
    @ApiProperty({ required: true })
    date_created: Date;
}