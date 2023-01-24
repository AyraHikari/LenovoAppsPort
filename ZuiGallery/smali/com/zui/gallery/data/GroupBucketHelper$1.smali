.class synthetic Lcom/zui/gallery/data/GroupBucketHelper$1;
.super Ljava/lang/Object;
.source "GroupBucketHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/data/GroupBucketHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$zui$gallery$database$GalleryCursorJoiner$Result:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1754
    invoke-static {}, Lcom/zui/gallery/database/GalleryCursorJoiner$Result;->values()[Lcom/zui/gallery/database/GalleryCursorJoiner$Result;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/zui/gallery/data/GroupBucketHelper$1;->$SwitchMap$com$zui$gallery$database$GalleryCursorJoiner$Result:[I

    :try_start_0
    sget-object v1, Lcom/zui/gallery/database/GalleryCursorJoiner$Result;->LEFT:Lcom/zui/gallery/database/GalleryCursorJoiner$Result;

    invoke-virtual {v1}, Lcom/zui/gallery/database/GalleryCursorJoiner$Result;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/zui/gallery/data/GroupBucketHelper$1;->$SwitchMap$com$zui$gallery$database$GalleryCursorJoiner$Result:[I

    sget-object v1, Lcom/zui/gallery/database/GalleryCursorJoiner$Result;->BOTH:Lcom/zui/gallery/database/GalleryCursorJoiner$Result;

    invoke-virtual {v1}, Lcom/zui/gallery/database/GalleryCursorJoiner$Result;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
