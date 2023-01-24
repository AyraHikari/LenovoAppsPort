.class public Lcom/zui/gallery/filtershow/provider/SharedImageProvider;
.super Landroid/content/ContentProvider;
.source "SharedImageProvider.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.zui.gallery.filtershow.provider.SharedImageProvider"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final LOGTAG:Ljava/lang/String; = "SharedImageProvider"

.field public static final MIME_TYPE:Ljava/lang/String; = "image/jpeg"

.field public static final PREPARE:Ljava/lang/String; = "prepare"

.field private static mImageReadyCond:Landroid/os/ConditionVariable;


# instance fields
.field private final mMimeStreamType:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://com.zui.gallery.filtershow.provider.SharedImageProvider/image"

    .line 39
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/filtershow/provider/SharedImageProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 46
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    sput-object v0, Lcom/zui/gallery/filtershow/provider/SharedImageProvider;->mImageReadyCond:Landroid/os/ConditionVariable;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const-string v0, "image/jpeg"

    .line 42
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/provider/SharedImageProvider;->mMimeStreamType:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p1, p0, Lcom/zui/gallery/filtershow/provider/SharedImageProvider;->mMimeStreamType:[Ljava/lang/String;

    return-object p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const-string p1, "image/jpeg"

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    const-string p1, "prepare"

    .line 65
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 67
    sget-object p1, Lcom/zui/gallery/filtershow/provider/SharedImageProvider;->mImageReadyCond:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->close()V

    goto :goto_0

    .line 69
    :cond_0
    sget-object p1, Lcom/zui/gallery/filtershow/provider/SharedImageProvider;->mImageReadyCond:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 126
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 131
    :cond_0
    sget-object p2, Lcom/zui/gallery/filtershow/provider/SharedImageProvider;->mImageReadyCond:Landroid/os/ConditionVariable;

    invoke-virtual {p2}, Landroid/os/ConditionVariable;->block()V

    .line 132
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x10000000

    .line 135
    invoke-static {p2, p1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .line 87
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string p4, "_size"

    const-string p5, "_display_name"

    const-string v0, "_data"

    const-string v1, "_id"

    if-nez p2, :cond_1

    .line 92
    filled-new-array {v1, v0, p5, p4}, [Ljava/lang/String;

    move-result-object p2

    .line 101
    :cond_1
    sget-object v2, Lcom/zui/gallery/filtershow/provider/SharedImageProvider;->mImageReadyCond:Landroid/os/ConditionVariable;

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->block()V

    .line 103
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    new-instance p3, Landroid/database/MatrixCursor;

    invoke-direct {p3, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 106
    array-length v3, p2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move v5, v4

    .line 107
    :goto_0
    array-length v6, p2

    if-ge v5, v6, :cond_6

    .line 108
    aget-object v6, p2, v5

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 109
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    goto :goto_1

    .line 110
    :cond_2
    aget-object v6, p2, v5

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 111
    aput-object p1, v3, v5

    goto :goto_1

    .line 112
    :cond_3
    aget-object v6, p2, v5

    invoke-virtual {v6, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 113
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    goto :goto_1

    .line 114
    :cond_4
    aget-object v6, p2, v5

    invoke-virtual {v6, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 115
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v5

    :cond_5
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 118
    :cond_6
    invoke-virtual {p3, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object p3
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
