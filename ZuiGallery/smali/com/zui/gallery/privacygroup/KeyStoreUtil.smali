.class public Lcom/zui/gallery/privacygroup/KeyStoreUtil;
.super Ljava/lang/Object;
.source "KeyStoreUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/privacygroup/KeyStoreUtil$onRemoveListner;,
        Lcom/zui/gallery/privacygroup/KeyStoreUtil$OnPrivacyListnerForSave;,
        Lcom/zui/gallery/privacygroup/KeyStoreUtil$OnPrivacyListner;,
        Lcom/zui/gallery/privacygroup/KeyStoreUtil$RemoveInfo;
    }
.end annotation


# static fields
.field public static final ACTION_TO_PRIVACY_SPACE:Ljava/lang/String; = "com.lenovo.privacyspace.verification"

.field private static final CIPHER_TRANSFORMATION:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field private static final DES_KEY:Ljava/lang/String; = "des_key"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "android.app.extra.TITLE"

.field public static final FILE_UNDERLINE:Ljava/lang/String; = "_"

.field private static volatile INSTANCE:Lcom/zui/gallery/privacygroup/KeyStoreUtil; = null

.field public static final JPEG_MIME_TYPE:Ljava/lang/String; = "image/jpeg"

.field private static LOCK:Ljava/lang/Object; = null

.field public static final MAX_SIZE:J = 0x1f400000L

.field public static final NO_MEDIA_NAME:Ljava/lang/String; = ".nomedia"

.field public static final ORI_NORMAL:I = 0x1

.field public static final PRIVACY_REQUEST_CODE:I = 0x22b8

.field public static final PRIVACY_URL_TO_FILTERSHOW:Ljava/lang/String; = "privacy_url_to_filtershow"

.field public static final RESULT_CANCELED:I = 0x0

.field public static final RESULT_FIRST_USER:I = 0x1

.field public static final RESULT_OK:I = -0x1

.field private static final TAG:Ljava/lang/String;

.field public static final defaultPath:Ljava/lang/String; = "/storage/emulated/0/DCIM/Camera/"

.field private static final pathForShare:Ljava/lang/String; = ".Privacy"

.field public static final pathForVideoCover:Ljava/lang/String; = ".VideoCover"

.field public static final privacyGroupName:Ljava/lang/String; = "/storage/emulated/0/DCIM/Camera/ZuiGalleryGroup/.MyPrivacy"

.field private static string:Ljava/lang/String;


# instance fields
.field private keyStore:Ljava/security/KeyStore;

.field private x500Principal:Ljavax/security/auth/x500/X500Principal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->LOCK:Ljava/lang/Object;

    .line 85
    const-class v0, Lcom/zui/gallery/privacygroup/KeyStoreUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->TAG:Ljava/lang/String;

    const-string v0, "abcdefghijklmnopqrstuvwxyz"

    .line 115
    sput-object v0, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->string:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-direct {p0}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/privacygroup/KeyStoreUtil;Landroid/app/Activity;Landroid/net/Uri;Z)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->share(Landroid/app/Activity;Landroid/net/Uri;Z)V

    return-void
.end method

.method public static byte2File([BLjava/lang/String;Ljava/lang/String;I)V
    .locals 4

    const/4 v0, 0x0

    .line 1010
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1011
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1012
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1014
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1015
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1016
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1017
    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1018
    :try_start_2
    invoke-virtual {v1, p0}, Ljava/io/BufferedOutputStream;->write([B)V

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, p0, v3

    .line 1023
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast v0, [Ljava/lang/String;

    new-instance v3, Lcom/zui/gallery/privacygroup/KeyStoreUtil$3;

    invoke-direct {v3, p1, p3}, Lcom/zui/gallery/privacygroup/KeyStoreUtil$3;-><init>(Ljava/lang/String;I)V

    invoke-static {p2, p0, v0, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1046
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1048
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 1053
    :goto_0
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_4

    :catch_1
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v2, v0

    goto :goto_4

    :catch_3
    move-exception p0

    move-object v2, v0

    .line 1041
    :goto_1
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo p1, "wangcanremove"

    .line 1042
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "byte2File.e is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v0, :cond_1

    .line 1046
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    :catch_4
    move-exception p0

    .line 1048
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    .line 1053
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_3

    :catch_5
    move-exception p0

    .line 1055
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_3
    return-void

    :catchall_2
    move-exception p0

    :goto_4
    if-eqz v0, :cond_3

    .line 1046
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_5

    :catch_6
    move-exception p1

    .line 1048
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_5
    if-eqz v2, :cond_4

    .line 1053
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_6

    :catch_7
    move-exception p1

    .line 1055
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1058
    :cond_4
    :goto_6
    throw p0
.end method

.method public static get()Lcom/zui/gallery/privacygroup/KeyStoreUtil;
    .locals 2

    .line 162
    sget-object v0, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->INSTANCE:Lcom/zui/gallery/privacygroup/KeyStoreUtil;

    if-nez v0, :cond_1

    .line 163
    sget-object v0, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 164
    :try_start_0
    sget-object v1, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->INSTANCE:Lcom/zui/gallery/privacygroup/KeyStoreUtil;

    if-nez v1, :cond_0

    .line 165
    new-instance v1, Lcom/zui/gallery/privacygroup/KeyStoreUtil;

    invoke-direct {v1}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;-><init>()V

    sput-object v1, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->INSTANCE:Lcom/zui/gallery/privacygroup/KeyStoreUtil;

    .line 167
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 170
    :cond_1
    :goto_0
    sget-object v0, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->INSTANCE:Lcom/zui/gallery/privacygroup/KeyStoreUtil;

    return-object v0
.end method

.method private getDesKey()Ljava/lang/String;
    .locals 5

    .line 131
    sget-object v0, Lcom/zui/gallery/app/GalleryAppImpl;->mApp:Lcom/zui/gallery/app/GalleryAppImpl;

    invoke-virtual {v0}, Lcom/zui/gallery/app/GalleryAppImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "des_key"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "desKey is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "privatekey"

    invoke-static {v3, v2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x10

    .line 136
    invoke-static {v0}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->getRandomString(I)Ljava/lang/String;

    move-result-object v0

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    sget-object v2, Lcom/zui/gallery/app/GalleryAppImpl;->mApp:Lcom/zui/gallery/app/GalleryAppImpl;

    invoke-virtual {v2}, Lcom/zui/gallery/app/GalleryAppImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-object v0
.end method

.method private getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "/"

    .line 854
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 855
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getMetadataOrientation(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 10

    const-string v0, "Failed to close InputStream"

    const-string/jumbo v1, "wangcanoror"

    if-eqz p1, :cond_9

    if-eqz p0, :cond_9

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1236
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "orientation"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_3

    .line 1239
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    .line 1240
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string/jumbo v6, "wangmmmm"

    .line 1241
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ori is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 p0, 0x5a

    if-eq v5, p0, :cond_2

    const/16 p0, 0xb4

    if-eq v5, p0, :cond_1

    const/16 p0, 0x10e

    if-eq v5, p0, :cond_0

    .line 1260
    invoke-static {v4}, Lcom/zui/gallery/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return v3

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-static {v4}, Lcom/zui/gallery/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return p0

    :cond_1
    const/4 p0, 0x3

    goto :goto_0

    :cond_2
    const/4 p0, 0x6

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v2, v4

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_1
    invoke-static {v2}, Lcom/zui/gallery/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 1261
    throw p0

    :catch_0
    move-object v4, v2

    .line 1260
    :catch_1
    :cond_3
    invoke-static {v4}, Lcom/zui/gallery/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 1262
    new-instance v4, Lcom/zui/gallery/exif/ExifInterface;

    invoke-direct {v4}, Lcom/zui/gallery/exif/ExifInterface;-><init>()V

    :try_start_2
    const-string v5, "file"

    .line 1266
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1267
    invoke-static {p1}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->getMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    const-string v5, "image/jpeg"

    .line 1268
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v3

    .line 1271
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    .line 1272
    invoke-virtual {v4, p0}, Lcom/zui/gallery/exif/ExifInterface;->readExif(Ljava/lang/String;)V

    goto :goto_2

    .line 1274
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 1275
    invoke-virtual {v4, v2}, Lcom/zui/gallery/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V

    .line 1277
    :goto_2
    invoke-static {v4}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->parseExif(Lcom/zui/gallery/exif/ExifInterface;)I

    move-result p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v2, :cond_6

    .line 1283
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 1286
    invoke-static {v1, v0, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_3
    return p0

    :catchall_2
    move-exception p0

    goto :goto_5

    :catch_3
    move-exception p0

    :try_start_4
    const-string p1, "Failed to read EXIF orientation"

    .line 1279
    invoke-static {v1, p1, p0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v2, :cond_7

    .line 1283
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p0

    .line 1286
    invoke-static {v1, v0, p0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_4
    return v3

    :goto_5
    if-eqz v2, :cond_8

    .line 1283
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_6

    :catch_5
    move-exception p1

    .line 1286
    invoke-static {v1, v0, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1288
    :cond_8
    :goto_6
    throw p0

    .line 1230
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bad argument to getOrientation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getMimeType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 1293
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1296
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getOriginAlbumPath(Ljava/lang/String;)Lcom/zui/gallery/privacygroup/KeyStoreUtil$RemoveInfo;
    .locals 11

    .line 821
    new-instance v0, Lcom/zui/gallery/privacygroup/KeyStoreUtil$RemoveInfo;

    invoke-direct {v0, p0}, Lcom/zui/gallery/privacygroup/KeyStoreUtil$RemoveInfo;-><init>(Lcom/zui/gallery/privacygroup/KeyStoreUtil;)V

    .line 824
    new-instance v1, Lcom/zui/gallery/data/MediaDetails;

    invoke-direct {v1}, Lcom/zui/gallery/data/MediaDetails;-><init>()V

    const-string v1, "/"

    .line 825
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "."

    .line 827
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v2, v4

    .line 828
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 829
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u8981\u67e5\u8bad\u7684fileName is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "wangcanremove"

    invoke-static {v3, v2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/zui/gallery/database/GalleryContract$PrivacyFiles;->CONTENT_URI:Landroid/net/Uri;

    new-array v9, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v9, v2

    const/4 v7, 0x0

    const-string/jumbo v8, "title=? "

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const-string v4, "/storage/emulated/0/DCIM/Camera/"

    if-eqz p1, :cond_1

    .line 834
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v4, "file_path"

    .line 835
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 836
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 837
    invoke-virtual {v4, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 838
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/zui/gallery/privacygroup/KeyStoreUtil$RemoveInfo;->originAlbumPath:Ljava/lang/String;

    const-string v5, "media_type"

    .line 840
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 841
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v0, Lcom/zui/gallery/privacygroup/KeyStoreUtil$RemoveInfo;->mediaType:I

    .line 842
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeInfo.originAlbumPath is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/zui/gallery/privacygroup/KeyStoreUtil$RemoveInfo;->originAlbumPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " & removeInfo.mediaType is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/zui/gallery/privacygroup/KeyStoreUtil$RemoveInfo;->mediaType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 846
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 847
    throw v0

    .line 849
    :cond_1
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "originAlbumPath is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static getRandom(I)I
    .locals 4

    .line 118
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    int-to-double v2, p0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method private static getRandomString(I)Ljava/lang/String;
    .locals 5

    .line 122
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 123
    sget-object v1, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->string:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    .line 125
    sget-object v3, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->string:Ljava/lang/String;

    add-int/lit8 v4, v1, -0x1

    invoke-static {v4}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->getRandom(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getVideoBuffer(Ljava/io/ByteArrayOutputStream;)[B
    .locals 2

    .line 720
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "buf"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 721
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 722
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 726
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 724
    invoke-virtual {p1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private init()V
    .locals 2

    :try_start_0
    const-string v0, "AndroidKeyStore"

    .line 146
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->keyStore:Ljava/security/KeyStore;

    const/4 v1, 0x0

    .line 147
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 149
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    const-string v1, "CN=Duke, OU=JavaSoft, O=Sun Microsystems, C=US"

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->x500Principal:Ljavax/security/auth/x500/X500Principal;
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 157
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 155
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 153
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    .line 151
    invoke-virtual {v0}, Ljava/security/KeyStoreException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private insertGroupAlbum(Lcom/zui/gallery/app/GalleryApp;Ljava/lang/String;Z)V
    .locals 2

    .line 568
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 569
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_0

    .line 571
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 573
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    const-string p2, "privatekey"

    const-string p3, "insertGroupAlbum is called"

    .line 578
    invoke-static {p2, p3}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "/storage/emulated/0/DCIM/Camera/ZuiGalleryGroup/.MyPrivacy"

    .line 579
    invoke-static {p1, p2, v0, v1}, Lcom/zui/gallery/util/GroupUtils;->batchCopy2PrivateGroup(Lcom/zui/gallery/app/GalleryApp;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method private static parseExif(Lcom/zui/gallery/exif/ExifInterface;)I
    .locals 1

    .line 1302
    sget v0, Lcom/zui/gallery/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {p0, v0}, Lcom/zui/gallery/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 1304
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    return v0

    :pswitch_0
    return p0

    :cond_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private share(Landroid/app/Activity;Landroid/net/Uri;Z)V
    .locals 4

    .line 902
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    .line 903
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    .line 905
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 906
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content://media/external/images"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "image/*"

    if-eqz v1, :cond_0

    .line 907
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 908
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "content://media/external/video"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v3, "video/*"

    if-eqz v1, :cond_1

    .line 909
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 913
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 915
    :cond_2
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 922
    :goto_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "media_path"

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 924
    sget-object p2, Lcom/zui/gallery/app/GalleryAppImpl;->mApp:Lcom/zui/gallery/app/GalleryAppImpl;

    const p3, 0x7f100254

    invoke-virtual {p2, p3}, Lcom/zui/gallery/app/GalleryAppImpl;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p2

    .line 926
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public addFileInfoToSqlite(Ljava/lang/String;Lcom/zui/gallery/data/MediaItem;)V
    .locals 26

    move-object/from16 v0, p2

    .line 1154
    iget-boolean v4, v0, Lcom/zui/gallery/data/MediaItem;->isContinuousCover:Z

    .line 1155
    invoke-virtual/range {p2 .. p2}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    const-string v1, "/"

    invoke-static {v1}, Lcom/zui/gallery/data/Path;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1156
    array-length v2, v1

    const-string v3, ""

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, -0x2

    .line 1168
    aget-object v1, v1, v2

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, v3

    .line 1172
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/zui/gallery/data/MediaItem;->getDetails()Lcom/zui/gallery/data/MediaDetails;

    move-result-object v1

    .line 1175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "title = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v7, "wangcanprovider"

    invoke-static {v7, v2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    .line 1176
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    const/4 v2, 0x5

    .line 1179
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 1180
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    .line 1182
    :cond_1
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_1
    move v9, v2

    const/4 v2, 0x6

    .line 1184
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 1185
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2

    .line 1187
    :cond_2
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_2
    move v10, v2

    .line 1190
    invoke-virtual/range {p2 .. p2}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result v22

    const/16 v2, 0xa

    .line 1191
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const/16 v2, 0x64

    .line 1193
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_3

    move-object v15, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v15, v2

    :goto_3
    const/16 v2, 0x65

    .line 1194
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_4

    move-object/from16 v16, v3

    goto :goto_4

    :cond_4
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v16, v2

    :goto_4
    const/16 v2, 0x66

    .line 1195
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/data/MediaDetails$FlashState;

    const/16 v2, 0x67

    .line 1196
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_5

    const-wide/16 v17, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    :goto_5
    const/16 v2, 0x68

    .line 1197
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_6

    move-object/from16 v19, v3

    goto :goto_6

    :cond_6
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v19, v2

    :goto_6
    const/16 v2, 0x69

    .line 1198
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_7

    move-object/from16 v20, v3

    goto :goto_7

    :cond_7
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v20, v2

    :goto_7
    const/16 v2, 0x6b

    .line 1199
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_8

    move-object/from16 v24, v3

    goto :goto_8

    :cond_8
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v24, v2

    :goto_8
    const/16 v2, 0x6c

    .line 1200
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_9

    move-object/from16 v25, v3

    goto :goto_9

    :cond_9
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v25, v2

    :goto_9
    const/16 v2, 0xc8

    .line 1201
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava/lang/String;

    .line 1208
    sget-object v1, Lcom/zui/gallery/app/GalleryAppImpl;->mApp:Lcom/zui/gallery/app/GalleryAppImpl;

    invoke-virtual {v1}, Lcom/zui/gallery/app/GalleryAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/zui/gallery/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->getMetadataOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    move/from16 v23, v0

    .line 1209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOrientation is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wangmmmm"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    sget-object v0, Lcom/zui/gallery/app/GalleryAppImpl;->mApp:Lcom/zui/gallery/app/GalleryAppImpl;

    invoke-virtual {v0}, Lcom/zui/gallery/app/GalleryAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const/4 v8, 0x0

    const/16 v21, 0x0

    const-string/jumbo v14, "state"

    move-object/from16 v2, p1

    move-object v3, v7

    move v6, v9

    move v7, v10

    move-wide v9, v12

    move-object v12, v15

    move-object/from16 v13, v16

    move-object/from16 v15, v20

    move-wide/from16 v16, v17

    move-object/from16 v18, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v25

    invoke-static/range {v1 .. v23}, Lcom/zui/gallery/util/GalleryUtils;->insertPrivacyDB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-void
.end method

.method public containsAlias(Ljava/lang/String;)Z
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->keyStore:Ljava/security/KeyStore;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->keyStore:Ljava/security/KeyStore;

    invoke-virtual {v0, p1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 204
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return v1
.end method

.method public createFile([BLjava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    const/4 v0, 0x0

    .line 971
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 972
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 973
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 975
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 976
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 977
    :try_start_1
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 978
    :try_start_2
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 979
    :try_start_3
    invoke-virtual {v1, p1}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 989
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 991
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 996
    :goto_0
    :try_start_5
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 998
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_4

    :catch_2
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catch_3
    move-exception p1

    goto :goto_1

    :catch_4
    move-exception p1

    move-object p2, v0

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object p2, v0

    goto :goto_4

    :catch_5
    move-exception p1

    move-object p2, v0

    move-object p3, p2

    .line 985
    :goto_1
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v0, :cond_1

    .line 989
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_2

    :catch_6
    move-exception p1

    .line 991
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_2
    if-eqz p2, :cond_2

    .line 996
    :try_start_8
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    :cond_2
    :goto_3
    return-object p3

    :catchall_2
    move-exception p1

    :goto_4
    if-eqz v0, :cond_3

    .line 989
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_5

    :catch_7
    move-exception p3

    .line 991
    invoke-virtual {p3}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_5
    if-eqz p2, :cond_4

    .line 996
    :try_start_a
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_6

    :catch_8
    move-exception p2

    .line 998
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 1001
    :cond_4
    :goto_6
    throw p1
.end method

.method public createPrivateFolder(Landroid/content/Context;Lcom/zui/gallery/privacygroup/KeyStoreUtil$OnPrivacyListner;)V
    .locals 3

    .line 532
    invoke-static {}, Lcom/zui/gallery/util/GroupUtils;->isGroupFolderExist()Z

    move-result p1

    if-nez p1, :cond_2

    .line 535
    :try_start_0
    new-instance p1, Ljava/io/File;

    sget-object v0, Lcom/zui/gallery/util/GroupUtils;->GROUP_PATH:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 536
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-nez p1, :cond_2

    .line 544
    invoke-interface {p2}, Lcom/zui/gallery/privacygroup/KeyStoreUtil$OnPrivacyListner;->onEncryptFail()V

    return-void

    :catch_0
    move-exception p1

    .line 538
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 539
    sget-object v0, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filetest result e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-interface {p2}, Lcom/zui/gallery/privacygroup/KeyStoreUtil$OnPrivacyListner;->onEncryptFail()V

    return-void

    .line 549
    :cond_2
    new-instance p1, Ljava/io/File;

    const-string v0, "/storage/emulated/0/DCIM/Camera/ZuiGalleryGroup/.MyPrivacy"

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 550
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "privatekey"

    if-nez v1, :cond_3

    const-string v1, "no private folder, create!!"

    .line 551
    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    :try_start_1
    const-string p1, "create .nomedia file"

    .line 554
    invoke-static {v2, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    new-instance p1, Ljava/io/File;

    const-string v1, ".nomedia"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 557
    invoke-interface {p2}, Lcom/zui/gallery/privacygroup/KeyStoreUtil$OnPrivacyListner;->onEncryptFail()V

    .line 558
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 559
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "create .nomedia file exception is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    const-string p1, "private folder already exists!!"

    .line 562
    invoke-static {v2, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public decrptFile(Ljava/lang/String;)[B
    .locals 8

    const-string v0, "AES"

    const-string v1, "privatekey"

    .line 679
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 682
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 683
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result p1

    .line 684
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 686
    invoke-direct {p0}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->getDesKey()Ljava/lang/String;

    move-result-object p1

    .line 687
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "decrptFile...AES_KEY is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v6, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 690
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    const/4 v0, 0x2

    .line 691
    invoke-virtual {p1, v0, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 694
    new-instance v0, Ljavax/crypto/CipherInputStream;

    invoke-direct {v0, v4, p1}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    const/16 p1, 0x400

    new-array p1, p1, [B

    .line 698
    :goto_0
    invoke-virtual {v0, p1}, Ljavax/crypto/CipherInputStream;->read([B)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    const/4 v6, 0x0

    .line 699
    invoke-virtual {v5, p1, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 702
    :cond_0
    invoke-direct {p0, v5}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->getVideoBuffer(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p1

    .line 703
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "videoBuffer 111 is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 705
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 706
    invoke-virtual {v0}, Ljavax/crypto/CipherInputStream;->close()V

    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "videoBuffer 222 is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decript time is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decrptFile failed, e is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public decrptFileToStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 7

    const-string v0, "AES"

    .line 732
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 735
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 737
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x400

    invoke-direct {p1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 739
    invoke-direct {p0}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->getDesKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "privatekey"

    .line 740
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decrptFileToStream...AES_KEY is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v4, v3, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 743
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v3, 0x2

    .line 744
    invoke-virtual {v0, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 747
    new-instance v3, Ljavax/crypto/CipherInputStream;

    invoke-direct {v3, v1, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    new-array v0, v2, [B

    .line 751
    :goto_0
    invoke-virtual {v3, v0}, Ljavax/crypto/CipherInputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 752
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 755
    :cond_0
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string/jumbo v1, "wangcankey"

    .line 756
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "videoBuffer 111 is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 758
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 759
    invoke-virtual {v3}, Ljavax/crypto/CipherInputStream;->close()V

    .line 762
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decrptFile failed, e is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wangcanremove"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public decrptFileTostream(Ljava/lang/String;)Ljava/io/ByteArrayOutputStream;
    .locals 7

    const-string v0, "AES"

    .line 641
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 643
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 644
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result p1

    .line 646
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 648
    invoke-direct {p0}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->getDesKey()Ljava/lang/String;

    move-result-object p1

    .line 649
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v5, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 651
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    const/4 v0, 0x2

    .line 652
    invoke-virtual {p1, v0, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 655
    new-instance v0, Ljavax/crypto/CipherInputStream;

    invoke-direct {v0, v3, p1}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    const/16 p1, 0x400

    new-array p1, p1, [B

    .line 659
    :goto_0
    invoke-virtual {v0, p1}, Ljavax/crypto/CipherInputStream;->read([B)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    const/4 v5, 0x0

    .line 660
    invoke-virtual {v4, p1, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 665
    :cond_0
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 667
    invoke-virtual {v0}, Ljavax/crypto/CipherInputStream;->close()V

    const-string/jumbo p1, "wangcankey"

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decript time is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception p1

    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decrptFile failed, e is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wangcanremove"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public decrptVideoToStream(Ljava/lang/String;Lcom/zui/gallery/banner/MediaPlayerActivity$LoadVideoListener;)V
    .locals 2

    .line 631
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zui/gallery/privacygroup/KeyStoreUtil$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/zui/gallery/privacygroup/KeyStoreUtil$1;-><init>(Lcom/zui/gallery/privacygroup/KeyStoreUtil;Lcom/zui/gallery/banner/MediaPlayerActivity$LoadVideoListener;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 637
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public decrypt([BLjava/lang/String;)[B
    .locals 3

    const/4 v0, 0x0

    .line 605
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->keyStore:Ljava/security/KeyStore;

    invoke-virtual {v1, p2, v0}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object p2

    check-cast p2, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 606
    invoke-virtual {p2}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object p2

    const-string v1, "RSA/ECB/PKCS1Padding"

    .line 608
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x2

    .line 609
    invoke-virtual {v1, v2, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 610
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 624
    invoke-virtual {p1}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 622
    invoke-virtual {p1}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 620
    invoke-virtual {p1}, Ljava/security/KeyStoreException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 618
    invoke-virtual {p1}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception p1

    .line 616
    invoke-virtual {p1}, Ljava/security/UnrecoverableEntryException;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception p1

    .line 614
    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_0

    :catch_6
    move-exception p1

    .line 612
    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public deleteKey(Ljava/lang/String;)V
    .locals 1

    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->keyStore:Ljava/security/KeyStore;

    invoke-virtual {v0, p1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 262
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public deleteSharFiles()V
    .locals 6

    .line 935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/storage/emulated/0/DCIM/Camera/ZuiGalleryGroup/.MyPrivacy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".Privacy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 936
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 937
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 940
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 941
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 942
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".nomedia"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 943
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public encrypt(Lcom/zui/gallery/app/GalleryApp;Ljava/lang/String;ZLcom/zui/gallery/privacygroup/KeyStoreUtil$OnPrivacyListner;)V
    .locals 9

    const-string p3, "AES"

    const-string v0, "privatekey"

    const-string/jumbo v1, "\u5f00\u59cbencrypt"

    .line 325
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 327
    invoke-interface {p1}, Lcom/zui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1, p4}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->createPrivateFolder(Landroid/content/Context;Lcom/zui/gallery/privacygroup/KeyStoreUtil$OnPrivacyListner;)V

    :try_start_0
    const-string p1, "encryptBitmap is called!"

    .line 329
    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    .line 332
    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const-string v4, "."

    .line 334
    invoke-virtual {p2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 335
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x1

    add-int/2addr v3, v6

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 336
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 338
    new-instance v4, Ljava/lang/StringBuffer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/storage/emulated/0/DCIM/Camera/ZuiGalleryGroup/.MyPrivacy"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v4, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 340
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 343
    invoke-direct {p0}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->getDesKey()Ljava/lang/String;

    move-result-object v4

    .line 344
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v5, v4, p3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 347
    invoke-static {p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p3

    .line 349
    invoke-virtual {p3, v6, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 351
    new-instance v4, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v4, p2, p3}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    const/16 p2, 0x400

    new-array p2, p2, [B

    .line 356
    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/FileInputStream;->read([B)I

    move-result p3

    const/4 v5, -0x1

    if-eq p3, v5, :cond_0

    const/4 v5, 0x0

    .line 357
    invoke-virtual {v4, p2, v5, p3}, Ljavax/crypto/CipherOutputStream;->write([BII)V

    goto :goto_0

    .line 359
    :cond_0
    invoke-virtual {v4}, Ljavax/crypto/CipherOutputStream;->flush()V

    .line 360
    invoke-virtual {v4}, Ljavax/crypto/CipherOutputStream;->close()V

    .line 361
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    .line 364
    invoke-interface {p4, v3}, Lcom/zui/gallery/privacygroup/KeyStoreUtil$OnPrivacyListner;->onEncryptSuccess(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 366
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 367
    invoke-interface {p4}, Lcom/zui/gallery/privacygroup/KeyStoreUtil$OnPrivacyListner;->onEncryptFail()V

    .line 368
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "e is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "entrypt time is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, v1

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public encryptForSave(Lcom/zui/gallery/app/GalleryApp;Ljava/lang/String;Ljava/lang/String;ZLcom/zui/gallery/privacygroup/KeyStoreUtil$OnPrivacyListnerForSave;)V
    .locals 9

    const-string p4, "AES"

    const-string v0, "privatekey"

    const-string/jumbo v1, "\u5f00\u59cbencrypt"

    .line 435
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 437
    invoke-interface {p1}, Lcom/zui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1, p5}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->createPrivateFolder(Landroid/content/Context;Lcom/zui/gallery/privacygroup/KeyStoreUtil$OnPrivacyListner;)V

    :try_start_0
    const-string p1, "encryptBitmap is called!"

    .line 439
    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    .line 442
    invoke-virtual {p3, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const-string v4, "."

    .line 444
    invoke-virtual {p3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 445
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x1

    add-int/2addr v3, v6

    invoke-virtual {p3, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 446
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 448
    new-instance v4, Ljava/lang/StringBuffer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/storage/emulated/0/DCIM/Camera/ZuiGalleryGroup/.MyPrivacy"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v4, p3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 450
    new-instance p3, Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 453
    invoke-direct {p0}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->getDesKey()Ljava/lang/String;

    move-result-object v4

    .line 454
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v5, v4, p4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 457
    invoke-static {p4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p4

    .line 459
    invoke-virtual {p4, v6, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 461
    new-instance v4, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v4, p3, p4}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    const/16 p3, 0x400

    new-array p3, p3, [B

    .line 466
    :goto_0
    invoke-virtual {p1, p3}, Ljava/io/FileInputStream;->read([B)I

    move-result p4

    const/4 v5, -0x1

    if-eq p4, v5, :cond_0

    const/4 v5, 0x0

    .line 467
    invoke-virtual {v4, p3, v5, p4}, Ljavax/crypto/CipherOutputStream;->write([BII)V

    goto :goto_0

    .line 469
    :cond_0
    invoke-virtual {v4}, Ljavax/crypto/CipherOutputStream;->flush()V

    .line 470
    invoke-virtual {v4}, Ljavax/crypto/CipherOutputStream;->close()V

    .line 471
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    .line 474
    invoke-interface {p5, p2, v3}, Lcom/zui/gallery/privacygroup/KeyStoreUtil$OnPrivacyListnerForSave;->onEncryptSuccess(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 476
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 477
    invoke-interface {p5}, Lcom/zui/gallery/privacygroup/KeyStoreUtil$OnPrivacyListnerForSave;->onEncryptFail()V

    .line 478
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "e is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "entrypt time is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, v1

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public encryptVideoCoverForVideo(Lcom/zui/gallery/app/GalleryApp;Ljava/lang/String;Lcom/zui/gallery/privacygroup/KeyStoreUtil$OnPrivacyListner;)V
    .locals 9

    const-string p1, "AES"

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u5f00\u59cbencrypt, filePath is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "videovideo"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/storage/emulated/0/DCIM/Camera/ZuiGalleryGroup/.MyPrivacy"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".VideoCover"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 378
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 380
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 382
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".nomedia"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 383
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 385
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    :cond_1
    const-string v2, "encryptBitmap is called!"

    .line 387
    invoke-static {v1, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    .line 390
    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const-string v4, "."

    .line 392
    invoke-virtual {p2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v3, v5

    .line 394
    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, ".png"

    .line 397
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fileName is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " & suffixName is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    new-instance v6, Ljava/lang/StringBuffer;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 401
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "finalpath is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 406
    invoke-direct {p0}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->getDesKey()Ljava/lang/String;

    move-result-object v3

    .line 407
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v4, v3, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 410
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    .line 412
    invoke-virtual {p1, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 414
    new-instance v3, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v3, v0, p1}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    const/16 p1, 0x400

    new-array p1, p1, [B

    .line 419
    :goto_0
    invoke-virtual {v2, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_2

    const/4 v4, 0x0

    .line 420
    invoke-virtual {v3, p1, v4, v0}, Ljavax/crypto/CipherOutputStream;->write([BII)V

    goto :goto_0

    .line 422
    :cond_2
    invoke-virtual {v3}, Ljavax/crypto/CipherOutputStream;->flush()V

    .line 423
    invoke-virtual {v3}, Ljavax/crypto/CipherOutputStream;->close()V

    .line 424
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 426
    invoke-interface {p3, p2}, Lcom/zui/gallery/privacygroup/KeyStoreUtil$OnPrivacyListner;->onEncryptSuccess(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 428
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 429
    invoke-interface {p3}, Lcom/zui/gallery/privacygroup/KeyStoreUtil$OnPrivacyListner;->onEncryptFail()V

    .line 430
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "e is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public getAliases()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->keyStore:Ljava/security/KeyStore;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 184
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 186
    invoke-virtual {v0}, Ljava/security/KeyStoreException;->printStackTrace()V

    return-object v1
.end method

.method public getAvaliablePrivacyCount()I
    .locals 6

    .line 517
    invoke-virtual {p0}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->isPrivacyExist()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 520
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v2, "/storage/emulated/0/DCIM/Camera/ZuiGalleryGroup/.MyPrivacy"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 521
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 522
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 523
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".nomedia"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public getFileFromPath(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    const-string v0, "/"

    .line 954
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 955
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 957
    invoke-virtual {p0, p1}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->decrptFile(Ljava/lang/String;)[B

    move-result-object p1

    .line 958
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buffer is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "wangcanremove"

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-string v1, "/storage/emulated/0/DCIM/Camera/ZuiGalleryGroup/.MyPrivacy"

    .line 961
    invoke-virtual {p0, p1, v1, v0}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->createFile([BLjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getPrivacyCount()I
    .locals 2

    .line 506
    invoke-virtual {p0}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->isPrivacyExist()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 509
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/storage/emulated/0/DCIM/Camera/ZuiGalleryGroup/.MyPrivacy"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 510
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 511
    array-length v0, v0

    return v0
.end method

.method public isPrivacyAvaliable()Z
    .locals 3

    .line 493
    new-instance v0, Ljava/io/File;

    const-string v1, "/storage/emulated/0/DCIM/Camera/ZuiGalleryGroup/.MyPrivacy"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 494
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 497
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method public isPrivacyExist()Z
    .locals 2

    .line 484
    new-instance v0, Ljava/io/File;

    const-string v1, "/storage/emulated/0/DCIM/Camera/ZuiGalleryGroup/.MyPrivacy"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 485
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isPrivacyGroupExists()Z
    .locals 2

    .line 1139
    new-instance v0, Ljava/io/File;

    const-string v1, "/storage/emulated/0/DCIM/Camera/ZuiGalleryGroup/.MyPrivacy"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1140
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPrivacySpaceOff()Z
    .locals 4

    .line 1327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "space state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/zui/gallery/app/GalleryAppImpl;->mApp:Lcom/zui/gallery/app/GalleryAppImpl;

    invoke-virtual {v1}, Lcom/zui/gallery/app/GalleryAppImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "zui_privacy_space_switch_status"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "spacespace"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    sget-object v0, Lcom/zui/gallery/app/GalleryAppImpl;->mApp:Lcom/zui/gallery/app/GalleryAppImpl;

    invoke-virtual {v0}, Lcom/zui/gallery/app/GalleryAppImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public removeFromPrivacy(Ljava/lang/String;Lcom/zui/gallery/privacygroup/KeyStoreUtil$onRemoveListner;)V
    .locals 6

    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "filePath is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wangcanremove"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/"

    .line 774
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const-string v2, "_"

    .line 776
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "."

    .line 777
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 778
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 779
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 781
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 783
    invoke-virtual {p0, p1}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->decrptFile(Ljava/lang/String;)[B

    move-result-object v2

    .line 784
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buffer is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    invoke-direct {p0, p1}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->getOriginAlbumPath(Ljava/lang/String;)Lcom/zui/gallery/privacygroup/KeyStoreUtil$RemoveInfo;

    move-result-object v3

    .line 787
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "originAlbumPath is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/zui/gallery/privacygroup/KeyStoreUtil$RemoveInfo;->originAlbumPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " & mediaType is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/zui/gallery/privacygroup/KeyStoreUtil$RemoveInfo;->mediaType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_3

    .line 790
    iget-object v4, v3, Lcom/zui/gallery/privacygroup/KeyStoreUtil$RemoveInfo;->originAlbumPath:Ljava/lang/String;

    if-nez v4, :cond_1

    const-string v4, "/storage/emulated/0/DCIM/Camera/"

    .line 791
    iput-object v4, v3, Lcom/zui/gallery/privacygroup/KeyStoreUtil$RemoveInfo;->originAlbumPath:Ljava/lang/String;

    const-string v4, "mp4"

    .line 792
    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x6

    .line 793
    iput v4, v3, Lcom/zui/gallery/privacygroup/KeyStoreUtil$RemoveInfo;->mediaType:I

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    .line 795
    iput v4, v3, Lcom/zui/gallery/privacygroup/KeyStoreUtil$RemoveInfo;->mediaType:I

    .line 799
    :cond_1
    :goto_0
    iget-object v4, v3, Lcom/zui/gallery/privacygroup/KeyStoreUtil$RemoveInfo;->originAlbumPath:Ljava/lang/String;

    iget v3, v3, Lcom/zui/gallery/privacygroup/KeyStoreUtil$RemoveInfo;->mediaType:I

    invoke-static {v2, v4, v0, v3}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->byte2File([BLjava/lang/String;Ljava/lang/String;I)V

    const-string v0, "create file"

    .line 800
    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 804
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 805
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1

    :cond_2
    const-string v0, "old file delete"

    .line 807
    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    invoke-interface {p2, p1}, Lcom/zui/gallery/privacygroup/KeyStoreUtil$onRemoveListner;->onRemoved(Z)V

    :cond_3
    return-void
.end method

.method public sharPrivacyFile(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 5

    .line 860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/storage/emulated/0/DCIM/Camera/ZuiGalleryGroup/.MyPrivacy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".Privacy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 861
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 862
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 863
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 865
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".nomedia"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 866
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 868
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 871
    :cond_1
    invoke-direct {p0, p2}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 875
    invoke-virtual {p0, p2}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->decrptFile(Ljava/lang/String;)[B

    move-result-object p2

    const-string/jumbo v2, "wangcanremove"

    .line 876
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buffer is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    .line 879
    invoke-virtual {p0, p2, v0, v1}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->createFile([BLjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    goto :goto_0

    :cond_2
    move-object p2, v2

    .line 882
    :goto_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 886
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v1

    .line 888
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast v2, [Ljava/lang/String;

    new-instance v1, Lcom/zui/gallery/privacygroup/KeyStoreUtil$2;

    invoke-direct {v1, p0, v0, p1, p3}, Lcom/zui/gallery/privacygroup/KeyStoreUtil$2;-><init>(Lcom/zui/gallery/privacygroup/KeyStoreUtil;[Ljava/lang/String;Landroid/app/Activity;Z)V

    invoke-static {p2, v0, v2, v1}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 897
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public sign([BLjava/lang/String;)[B
    .locals 2

    const/4 v0, 0x0

    .line 1070
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->keyStore:Ljava/security/KeyStore;

    invoke-virtual {v1, p2, v0}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object p2

    check-cast p2, Ljava/security/KeyStore$PrivateKeyEntry;

    const-string v1, "SHA1withRSA"

    .line 1071
    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 1072
    invoke-virtual {p2}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 1073
    invoke-virtual {v1, p1}, Ljava/security/Signature;->update([B)V

    .line 1074
    invoke-virtual {v1}, Ljava/security/Signature;->sign()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1084
    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1082
    invoke-virtual {p1}, Ljava/security/SignatureException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 1080
    invoke-virtual {p1}, Ljava/security/UnrecoverableEntryException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 1078
    invoke-virtual {p1}, Ljava/security/KeyStoreException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception p1

    .line 1076
    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public verify([B[BLjava/lang/String;)Z
    .locals 2

    .line 1101
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->keyStore:Ljava/security/KeyStore;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object p3

    check-cast p3, Ljava/security/KeyStore$PrivateKeyEntry;

    const-string v0, "SHA1withRSA"

    .line 1103
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 1104
    invoke-virtual {p3}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/security/Signature;->initVerify(Ljava/security/cert/Certificate;)V

    .line 1105
    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    .line 1106
    invoke-virtual {v0, p2}, Ljava/security/Signature;->verify([B)Z

    move-result p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1116
    invoke-virtual {p1}, Ljava/security/KeyStoreException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1114
    invoke-virtual {p1}, Ljava/security/UnrecoverableEntryException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 1112
    invoke-virtual {p1}, Ljava/security/SignatureException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 1110
    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception p1

    .line 1108
    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
