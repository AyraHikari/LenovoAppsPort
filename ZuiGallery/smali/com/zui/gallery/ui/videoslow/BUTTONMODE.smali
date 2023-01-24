.class public final enum Lcom/zui/gallery/ui/videoslow/BUTTONMODE;
.super Ljava/lang/Enum;
.source "BUTTONMODE.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zui/gallery/ui/videoslow/BUTTONMODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zui/gallery/ui/videoslow/BUTTONMODE;

.field public static final enum CHOICEMODE:Lcom/zui/gallery/ui/videoslow/BUTTONMODE;

.field public static final enum SINGLEMODE:Lcom/zui/gallery/ui/videoslow/BUTTONMODE;

.field public static final enum SINGLEMODE_ICON:Lcom/zui/gallery/ui/videoslow/BUTTONMODE;


# instance fields
.field private mode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 8
    new-instance v0, Lcom/zui/gallery/ui/videoslow/BUTTONMODE;

    const-string v1, "SINGLEMODE"

    const/4 v2, 0x0

    const-string/jumbo v3, "single"

    invoke-direct {v0, v1, v2, v3}, Lcom/zui/gallery/ui/videoslow/BUTTONMODE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zui/gallery/ui/videoslow/BUTTONMODE;->SINGLEMODE:Lcom/zui/gallery/ui/videoslow/BUTTONMODE;

    new-instance v0, Lcom/zui/gallery/ui/videoslow/BUTTONMODE;

    const-string v1, "SINGLEMODE_ICON"

    const/4 v3, 0x1

    const-string/jumbo v4, "single_icon"

    invoke-direct {v0, v1, v3, v4}, Lcom/zui/gallery/ui/videoslow/BUTTONMODE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zui/gallery/ui/videoslow/BUTTONMODE;->SINGLEMODE_ICON:Lcom/zui/gallery/ui/videoslow/BUTTONMODE;

    new-instance v0, Lcom/zui/gallery/ui/videoslow/BUTTONMODE;

    const-string v1, "CHOICEMODE"

    const/4 v4, 0x2

    const-string v5, "mutil"

    invoke-direct {v0, v1, v4, v5}, Lcom/zui/gallery/ui/videoslow/BUTTONMODE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zui/gallery/ui/videoslow/BUTTONMODE;->CHOICEMODE:Lcom/zui/gallery/ui/videoslow/BUTTONMODE;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/zui/gallery/ui/videoslow/BUTTONMODE;

    .line 7
    sget-object v5, Lcom/zui/gallery/ui/videoslow/BUTTONMODE;->SINGLEMODE:Lcom/zui/gallery/ui/videoslow/BUTTONMODE;

    aput-object v5, v1, v2

    sget-object v2, Lcom/zui/gallery/ui/videoslow/BUTTONMODE;->SINGLEMODE_ICON:Lcom/zui/gallery/ui/videoslow/BUTTONMODE;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/zui/gallery/ui/videoslow/BUTTONMODE;->$VALUES:[Lcom/zui/gallery/ui/videoslow/BUTTONMODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput-object p3, p0, Lcom/zui/gallery/ui/videoslow/BUTTONMODE;->mode:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zui/gallery/ui/videoslow/BUTTONMODE;
    .locals 1

    .line 7
    const-class v0, Lcom/zui/gallery/ui/videoslow/BUTTONMODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zui/gallery/ui/videoslow/BUTTONMODE;

    return-object p0
.end method

.method public static values()[Lcom/zui/gallery/ui/videoslow/BUTTONMODE;
    .locals 1

    .line 7
    sget-object v0, Lcom/zui/gallery/ui/videoslow/BUTTONMODE;->$VALUES:[Lcom/zui/gallery/ui/videoslow/BUTTONMODE;

    invoke-virtual {v0}, [Lcom/zui/gallery/ui/videoslow/BUTTONMODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zui/gallery/ui/videoslow/BUTTONMODE;

    return-object v0
.end method


# virtual methods
.method public getMode()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/zui/gallery/ui/videoslow/BUTTONMODE;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/zui/gallery/ui/videoslow/BUTTONMODE;->mode:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/ui/videoslow/BUTTONMODE;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
