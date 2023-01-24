.class public final enum Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;
.super Ljava/lang/Enum;
.source "AbstractGalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/AbstractGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Themes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;

.field public static final enum BLACK:Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;

.field public static final enum BLUE:Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;

.field public static final enum DEFALUT:Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;

.field public static final enum GOLDEN:Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;

.field public static final enum PINK:Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1598
    new-instance v0, Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;

    const-string v1, "DEFALUT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;->DEFALUT:Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;

    new-instance v0, Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;

    const-string v1, "BLACK"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;->BLACK:Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;

    new-instance v0, Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;

    const-string v1, "BLUE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;->BLUE:Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;

    new-instance v0, Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;

    const-string v1, "PINK"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;->PINK:Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;

    new-instance v0, Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;

    const-string v1, "GOLDEN"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;->GOLDEN:Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;

    .line 1597
    sget-object v7, Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;->DEFALUT:Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;

    aput-object v7, v1, v2

    sget-object v2, Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;->BLACK:Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;

    aput-object v2, v1, v3

    sget-object v2, Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;->BLUE:Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;

    aput-object v2, v1, v4

    sget-object v2, Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;->PINK:Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;->$VALUES:[Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1597
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;
    .locals 1

    .line 1597
    const-class v0, Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;

    return-object p0
.end method

.method public static values()[Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;
    .locals 1

    .line 1597
    sget-object v0, Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;->$VALUES:[Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;

    invoke-virtual {v0}, [Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;

    return-object v0
.end method
