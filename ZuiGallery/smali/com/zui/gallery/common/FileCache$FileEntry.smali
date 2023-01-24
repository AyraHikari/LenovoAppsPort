.class Lcom/zui/gallery/common/FileCache$FileEntry;
.super Lcom/zui/gallery/common/Entry;
.source "FileCache.java"


# annotations
.annotation runtime Lcom/zui/gallery/common/Entry$Table;
    value = "files"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/common/FileCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/common/FileCache$FileEntry$Columns;
    }
.end annotation


# static fields
.field public static final SCHEMA:Lcom/zui/gallery/common/EntrySchema;


# instance fields
.field public contentUrl:Ljava/lang/String;
    .annotation runtime Lcom/zui/gallery/common/Entry$Column;
        value = "content_url"
    .end annotation
.end field

.field public filename:Ljava/lang/String;
    .annotation runtime Lcom/zui/gallery/common/Entry$Column;
        value = "filename"
    .end annotation
.end field

.field public hashCode:J
    .annotation runtime Lcom/zui/gallery/common/Entry$Column;
        indexed = true
        value = "hash_code"
    .end annotation
.end field

.field public lastAccess:J
    .annotation runtime Lcom/zui/gallery/common/Entry$Column;
        indexed = true
        value = "last_access"
    .end annotation
.end field

.field public size:J
    .annotation runtime Lcom/zui/gallery/common/Entry$Column;
        value = "size"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 252
    new-instance v0, Lcom/zui/gallery/common/EntrySchema;

    const-class v1, Lcom/zui/gallery/common/FileCache$FileEntry;

    invoke-direct {v0, v1}, Lcom/zui/gallery/common/EntrySchema;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/zui/gallery/common/FileCache$FileEntry;->SCHEMA:Lcom/zui/gallery/common/EntrySchema;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 251
    invoke-direct {p0}, Lcom/zui/gallery/common/Entry;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/common/FileCache$1;)V
    .locals 0

    .line 251
    invoke-direct {p0}, Lcom/zui/gallery/common/FileCache$FileEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hash_code: "

    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/zui/gallery/common/FileCache$FileEntry;->hashCode:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "content_url"

    .line 281
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/common/FileCache$FileEntry;->contentUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "last_access"

    .line 282
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/zui/gallery/common/FileCache$FileEntry;->lastAccess:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "filename"

    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/common/FileCache$FileEntry;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
