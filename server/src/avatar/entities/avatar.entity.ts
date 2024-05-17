import { ApiProperty } from "@nestjs/swagger"

export class Avatar {
    @ApiProperty({required:false})
    idAvatar: number;
    @ApiProperty()
    userId: number;
    @ApiProperty()
    url_avatar: string;
    @ApiProperty({required:false})
    date_created: Date;
    @ApiProperty({required:false})
    date_updated: Date
}
