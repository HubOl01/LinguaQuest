import { ApiProperty, PartialType } from '@nestjs/swagger';
import { CreateLeagueDto } from './create-league.dto';
import { IsNotEmpty, IsString } from 'class-validator';

export class UpdateLeagueDto extends PartialType(CreateLeagueDto) {

    @ApiProperty({required:true})
    idLeague:number;

    @ApiProperty()
    @IsString()
    @IsNotEmpty()
    name:string;
    
    @ApiProperty({required:false})
    minXP:number;
    
    @ApiProperty({required:false})
    date_created:Date;
}
