.class public final enum Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;
.super Ljava/lang/Enum;
.source "LocalTimeAlbumViewModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

.field public static final enum DAY:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

.field public static final enum MONTH:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

.field public static final enum YEAR:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 4
    new-instance v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    const-string v1, "DAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->DAY:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    .line 5
    new-instance v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    const-string v1, "MONTH"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->MONTH:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    .line 6
    new-instance v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    const-string v1, "YEAR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->YEAR:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    .line 3
    sget-object v5, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->DAY:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    aput-object v5, v1, v2

    sget-object v2, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->MONTH:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->$VALUES:[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;
    .locals 1

    .line 3
    const-class v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    return-object p0
.end method

.method public static values()[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;
    .locals 1

    .line 3
    sget-object v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->$VALUES:[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    invoke-virtual {v0}, [Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    return-object v0
.end method
