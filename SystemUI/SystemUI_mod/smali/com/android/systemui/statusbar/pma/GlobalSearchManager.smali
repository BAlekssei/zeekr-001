.class public Lcom/android/systemui/statusbar/pma/GlobalSearchManager;
.super Ljava/lang/Object;
.source "GlobalSearchManager.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSuggestAppUtils:Lcom/android/systemui/statusbar/pma/SuggestAppUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/GlobalSearchManager;->mContext:Landroid/content/Context;

    .line 66
    new-instance v0, Lcom/android/systemui/statusbar/pma/SuggestAppUtils;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/GlobalSearchManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/pma/SuggestAppUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/GlobalSearchManager;->mSuggestAppUtils:Lcom/android/systemui/statusbar/pma/SuggestAppUtils;

    .line 67
    return-void
.end method

.method private getImageFromLocal(Ljava/lang/String;)Lcom/android/systemui/statusbar/pma/SearchResultInfo;
    .locals 11
    .param p1, "picName"    # Ljava/lang/String;

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v0, "displayName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v1, "displayImage":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/drawable/Drawable;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v2, "pathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v9, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 182
    .local v9, "mImageUri":Landroid/net/Uri;
    const-string v3, "_id"

    const-string v4, "_data"

    const-string v5, "_size"

    const-string v6, "_display_name"

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v5

    .line 186
    .local v5, "projImage":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/GlobalSearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "mime_type=? or mime_type=?"

    const-string v4, "image/jpeg"

    const-string v7, "image/png"

    filled-new-array {v4, v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "date_modified desc"

    move-object v4, v9

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 191
    .local v3, "mCursor":Landroid/database/Cursor;
    if-eqz v3, :cond_2

    .line 192
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 193
    const-string v4, "_data"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 195
    .local v4, "path":Ljava/lang/String;
    const-string v6, "_display_name"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 196
    .local v6, "name":Ljava/lang/String;
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    const/16 v8, 0x64

    const/16 v10, 0xbe

    invoke-direct {p0, v4, v8, v10}, Lcom/android/systemui/statusbar/pma/GlobalSearchManager;->getImageThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 197
    .local v7, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v6, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 198
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    .end local v4    # "path":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    goto :goto_0

    .line 203
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 205
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 206
    const/4 v4, 0x0

    return-object v4

    .line 208
    :cond_3
    new-instance v4, Lcom/android/systemui/statusbar/pma/ImageSearchResultInfo;

    invoke-direct {v4}, Lcom/android/systemui/statusbar/pma/ImageSearchResultInfo;-><init>()V

    .line 209
    .local v4, "searchResultInfo":Lcom/android/systemui/statusbar/pma/ImageSearchResultInfo;
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/pma/ImageSearchResultInfo;->setType(I)V

    .line 210
    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/pma/ImageSearchResultInfo;->setDisplayImage(Ljava/util/List;)V

    .line 211
    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/pma/ImageSearchResultInfo;->setDisplayName(Ljava/util/List;)V

    .line 212
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/pma/ImageSearchResultInfo;->setSize(I)V

    .line 213
    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/pma/ImageSearchResultInfo;->setFilePath(Ljava/util/List;)V

    .line 214
    return-object v4
.end method

.method private getImageThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "imagePath"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 218
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 219
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 220
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 222
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v1, p2

    .line 223
    .local v1, "beWidth":I
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v2, p3

    .line 225
    .local v2, "beHeight":I
    if-ge v1, v2, :cond_0

    .line 226
    move v3, v1

    .local v3, "be":I
    goto :goto_0

    .line 228
    .end local v3    # "be":I
    :cond_0
    move v3, v2

    .line 231
    .restart local v3    # "be":I
    :goto_0
    if-gtz v3, :cond_1

    .line 232
    const/4 v3, 0x1

    .line 234
    :cond_1
    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 235
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 236
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    const/4 v5, 0x2

    invoke-static {v4, p2, p3, v5}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 237
    return-object v4
.end method

.method private getVideoFromLocal(Ljava/lang/String;)Lcom/android/systemui/statusbar/pma/SearchResultInfo;
    .locals 14
    .param p1, "vedioName"    # Ljava/lang/String;

    .line 134
    sget-object v6, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 135
    .local v6, "mImageUri":Landroid/net/Uri;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 136
    .local v7, "displayName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 137
    .local v8, "displayImage":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/drawable/Drawable;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 138
    .local v9, "pathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "_id"

    const-string v1, "_data"

    const-string v2, "duration"

    const-string v3, "_size"

    const-string v4, "_display_name"

    const-string v5, "date_modified"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "proj":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/GlobalSearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "mime_type=?"

    const-string/jumbo v1, "video/mp4"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "date_modified desc"

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 149
    .local v0, "mCursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 150
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 151
    const-string v3, "_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 152
    .local v3, "videoId":I
    const-string v4, "_data"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 153
    .local v4, "path":Ljava/lang/String;
    const-string v5, "_display_name"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 154
    .local v5, "name":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/systemui/statusbar/pma/GlobalSearchManager;->mContext:Landroid/content/Context;

    .line 155
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    int-to-long v11, v3

    const/4 v13, 0x3

    invoke-static {v10, v11, v12, v13, v1}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 156
    .local v10, "bitmap":Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v11, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 157
    .local v11, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 158
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    .end local v3    # "videoId":I
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    .end local v10    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    goto :goto_0

    .line 163
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 165
    :cond_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 166
    return-object v1

    .line 168
    :cond_3
    new-instance v1, Lcom/android/systemui/statusbar/pma/VideoSearchResultInfo;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/pma/VideoSearchResultInfo;-><init>()V

    .line 169
    .local v1, "searchResultInfo":Lcom/android/systemui/statusbar/pma/VideoSearchResultInfo;
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/pma/VideoSearchResultInfo;->setType(I)V

    .line 170
    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/pma/VideoSearchResultInfo;->setDisplayName(Ljava/util/List;)V

    .line 171
    invoke-virtual {v1, v8}, Lcom/android/systemui/statusbar/pma/VideoSearchResultInfo;->setDisplayImage(Ljava/util/List;)V

    .line 172
    invoke-virtual {v1, v9}, Lcom/android/systemui/statusbar/pma/VideoSearchResultInfo;->setFilePath(Ljava/util/List;)V

    .line 173
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/pma/VideoSearchResultInfo;->setSize(I)V

    .line 174
    return-object v1
.end method

.method public static synthetic lambda$search$0(Lcom/android/systemui/statusbar/pma/GlobalSearchManager;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "emitter"    # Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v0, "searchResultInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/pma/SearchResultInfo;>;"
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/GlobalSearchManager;->searchApp(Ljava/lang/String;)Lcom/android/systemui/statusbar/pma/SearchResultInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/GlobalSearchManager;->searchVideo(Ljava/lang/String;)Lcom/android/systemui/statusbar/pma/SearchResultInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/GlobalSearchManager;->searchPic(Ljava/lang/String;)Lcom/android/systemui/statusbar/pma/SearchResultInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 83
    invoke-interface {p2, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method private searchApp(Ljava/lang/String;)Lcom/android/systemui/statusbar/pma/SearchResultInfo;
    .locals 13
    .param p1, "appName"    # Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/GlobalSearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 89
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v1, Lcom/android/systemui/statusbar/pma/AppSearchResultInfo;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/pma/AppSearchResultInfo;-><init>()V

    .line 90
    .local v1, "searchResultInfo":Lcom/android/systemui/statusbar/pma/AppSearchResultInfo;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v2, "displayName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v3, "displayImage":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/drawable/Drawable;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v4, "launchIntent":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v7

    .line 95
    .local v7, "packageInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_0

    .line 96
    return-object v5

    .line 98
    :cond_0
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageInfo;

    .line 102
    .local v9, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v10, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v10, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 103
    .local v10, "name":Ljava/lang/String;
    iget-object v11, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v11}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    .line 104
    .local v11, "intent":Landroid/content/Intent;
    if-eqz v10, :cond_1

    invoke-virtual {v10, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    if-eqz v11, :cond_1

    .line 105
    iget-object v12, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v12, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 106
    .local v12, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v9    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v12    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    goto :goto_0

    .line 113
    .end local v7    # "packageInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_2
    goto :goto_1

    .line 111
    :catch_0
    move-exception v7

    .line 112
    .local v7, "e":Ljava/lang/Exception;
    const-string v8, "GlobalSearchManager"

    const-string v9, "Exception in method of searchApp"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_3

    .line 115
    return-object v5

    .line 117
    :cond_3
    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/pma/AppSearchResultInfo;->setType(I)V

    .line 118
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/pma/AppSearchResultInfo;->setDisplayName(Ljava/util/List;)V

    .line 119
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/pma/AppSearchResultInfo;->setDisplayImage(Ljava/util/List;)V

    .line 120
    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/pma/AppSearchResultInfo;->setLaunchIntent(Ljava/util/List;)V

    .line 121
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/pma/AppSearchResultInfo;->setSize(I)V

    .line 122
    return-object v1
.end method

.method private searchPic(Ljava/lang/String;)Lcom/android/systemui/statusbar/pma/SearchResultInfo;
    .locals 1
    .param p1, "picName"    # Ljava/lang/String;

    .line 126
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/GlobalSearchManager;->getImageFromLocal(Ljava/lang/String;)Lcom/android/systemui/statusbar/pma/SearchResultInfo;

    move-result-object v0

    return-object v0
.end method

.method private searchVideo(Ljava/lang/String;)Lcom/android/systemui/statusbar/pma/SearchResultInfo;
    .locals 1
    .param p1, "vedioName"    # Ljava/lang/String;

    .line 130
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/GlobalSearchManager;->getVideoFromLocal(Ljava/lang/String;)Lcom/android/systemui/statusbar/pma/SearchResultInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSuggestedApps()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/pma/SearchResultInfo;",
            ">;"
        }
    .end annotation

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v0, "searchResultInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/pma/SearchResultInfo;>;"
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/GlobalSearchManager;->mSuggestAppUtils:Lcom/android/systemui/statusbar/pma/SuggestAppUtils;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/SuggestAppUtils;->getSuggestAppInfo()Lcom/android/systemui/statusbar/pma/SearchResultInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 73
    return-object v0
.end method

.method public search(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/pma/SearchResultInfo;",
            ">;>;"
        }
    .end annotation

    .line 77
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$GlobalSearchManager$9ZB4rqsUml_0xkSmj5P-0gztzQs;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$GlobalSearchManager$9ZB4rqsUml_0xkSmj5P-0gztzQs;-><init>(Lcom/android/systemui/statusbar/pma/GlobalSearchManager;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
