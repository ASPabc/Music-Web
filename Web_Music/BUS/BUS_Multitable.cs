using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using Web_Music.DAL;

namespace Web_Music.BUS
{
    public class BUS_Multitable
    {
        Data data = new Data();
        public DataTable GetDataSong()
        {
            string sql = @" select *
                            from Song, Artist, Song_Artist
                            where Song.ID = Song_Artist.Song_ID and Song_Artist.Artist_ID = Artist.ID";
            return data.GetTable(sql);
        }
    }
}