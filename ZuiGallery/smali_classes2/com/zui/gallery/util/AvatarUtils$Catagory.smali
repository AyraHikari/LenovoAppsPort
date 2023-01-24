.class public abstract enum Lcom/zui/gallery/util/AvatarUtils$Catagory;
.super Ljava/lang/Enum;
.source "AvatarUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/util/AvatarUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Catagory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zui/gallery/util/AvatarUtils$Catagory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zui/gallery/util/AvatarUtils$Catagory;

.field public static final enum ALBUMSETPAGE:Lcom/zui/gallery/util/AvatarUtils$Catagory;

.field public static final enum CLOUDSYNC:Lcom/zui/gallery/util/AvatarUtils$Catagory;

.field public static final enum GALLERYACTIVITY:Lcom/zui/gallery/util/AvatarUtils$Catagory;

.field public static final enum LOCALTIMEALBUMPAGE:Lcom/zui/gallery/util/AvatarUtils$Catagory;

.field public static final enum PHOTODETAILPAGE:Lcom/zui/gallery/util/AvatarUtils$Catagory;

.field public static final enum SELECTMODE:Lcom/zui/gallery/util/AvatarUtils$Catagory;

.field public static final enum TRASHITEM:Lcom/zui/gallery/util/AvatarUtils$Catagory;

.field public static final enum VIDEODETAILPAGE:Lcom/zui/gallery/util/AvatarUtils$Catagory;

.field public static final enum WIDGET:Lcom/zui/gallery/util/AvatarUtils$Catagory;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 105
    new-instance v0, Lcom/zui/gallery/util/AvatarUtils$Catagory$1;

    const-string v1, "GALLERYACTIVITY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zui/gallery/util/AvatarUtils$Catagory$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/util/AvatarUtils$Catagory;->GALLERYACTIVITY:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    .line 110
    new-instance v0, Lcom/zui/gallery/util/AvatarUtils$Catagory$2;

    const-string v1, "CLOUDSYNC"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/zui/gallery/util/AvatarUtils$Catagory$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/util/AvatarUtils$Catagory;->CLOUDSYNC:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    .line 115
    new-instance v0, Lcom/zui/gallery/util/AvatarUtils$Catagory$3;

    const-string v1, "LOCALTIMEALBUMPAGE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/zui/gallery/util/AvatarUtils$Catagory$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/util/AvatarUtils$Catagory;->LOCALTIMEALBUMPAGE:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    .line 120
    new-instance v0, Lcom/zui/gallery/util/AvatarUtils$Catagory$4;

    const-string v1, "ALBUMSETPAGE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/zui/gallery/util/AvatarUtils$Catagory$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/util/AvatarUtils$Catagory;->ALBUMSETPAGE:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    .line 125
    new-instance v0, Lcom/zui/gallery/util/AvatarUtils$Catagory$5;

    const-string v1, "SELECTMODE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/zui/gallery/util/AvatarUtils$Catagory$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/util/AvatarUtils$Catagory;->SELECTMODE:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    .line 130
    new-instance v0, Lcom/zui/gallery/util/AvatarUtils$Catagory$6;

    const-string v1, "PHOTODETAILPAGE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/zui/gallery/util/AvatarUtils$Catagory$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/util/AvatarUtils$Catagory;->PHOTODETAILPAGE:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    .line 135
    new-instance v0, Lcom/zui/gallery/util/AvatarUtils$Catagory$7;

    const-string v1, "VIDEODETAILPAGE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/zui/gallery/util/AvatarUtils$Catagory$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/util/AvatarUtils$Catagory;->VIDEODETAILPAGE:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    .line 140
    new-instance v0, Lcom/zui/gallery/util/AvatarUtils$Catagory$8;

    const-string v1, "TRASHITEM"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/zui/gallery/util/AvatarUtils$Catagory$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/util/AvatarUtils$Catagory;->TRASHITEM:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    .line 145
    new-instance v0, Lcom/zui/gallery/util/AvatarUtils$Catagory$9;

    const-string v1, "WIDGET"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/zui/gallery/util/AvatarUtils$Catagory$9;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/util/AvatarUtils$Catagory;->WIDGET:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    const/16 v1, 0x9

    new-array v1, v1, [Lcom/zui/gallery/util/AvatarUtils$Catagory;

    .line 104
    sget-object v11, Lcom/zui/gallery/util/AvatarUtils$Catagory;->GALLERYACTIVITY:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    aput-object v11, v1, v2

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Catagory;->CLOUDSYNC:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    aput-object v2, v1, v3

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Catagory;->LOCALTIMEALBUMPAGE:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    aput-object v2, v1, v4

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Catagory;->ALBUMSETPAGE:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    aput-object v2, v1, v5

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Catagory;->SELECTMODE:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    aput-object v2, v1, v6

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Catagory;->PHOTODETAILPAGE:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    aput-object v2, v1, v7

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Catagory;->VIDEODETAILPAGE:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    aput-object v2, v1, v8

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Catagory;->TRASHITEM:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    aput-object v2, v1, v9

    aput-object v0, v1, v10

    sput-object v1, Lcom/zui/gallery/util/AvatarUtils$Catagory;->$VALUES:[Lcom/zui/gallery/util/AvatarUtils$Catagory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/zui/gallery/util/AvatarUtils$1;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/util/AvatarUtils$Catagory;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zui/gallery/util/AvatarUtils$Catagory;
    .locals 1

    .line 104
    const-class v0, Lcom/zui/gallery/util/AvatarUtils$Catagory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zui/gallery/util/AvatarUtils$Catagory;

    return-object p0
.end method

.method public static values()[Lcom/zui/gallery/util/AvatarUtils$Catagory;
    .locals 1

    .line 104
    sget-object v0, Lcom/zui/gallery/util/AvatarUtils$Catagory;->$VALUES:[Lcom/zui/gallery/util/AvatarUtils$Catagory;

    invoke-virtual {v0}, [Lcom/zui/gallery/util/AvatarUtils$Catagory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zui/gallery/util/AvatarUtils$Catagory;

    return-object v0
.end method


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method
