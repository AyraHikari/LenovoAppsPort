.class synthetic Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$1;
.super Ljava/lang/Object;
.source "LocalTimeMergeAlbum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$zui$gallery$ui$localtime$LocalTimeAlbumViewModel:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 403
    invoke-static {}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->values()[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$1;->$SwitchMap$com$zui$gallery$ui$localtime$LocalTimeAlbumViewModel:[I

    :try_start_0
    sget-object v1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->DAY:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$1;->$SwitchMap$com$zui$gallery$ui$localtime$LocalTimeAlbumViewModel:[I

    sget-object v1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->MONTH:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$1;->$SwitchMap$com$zui$gallery$ui$localtime$LocalTimeAlbumViewModel:[I

    sget-object v1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->YEAR:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
