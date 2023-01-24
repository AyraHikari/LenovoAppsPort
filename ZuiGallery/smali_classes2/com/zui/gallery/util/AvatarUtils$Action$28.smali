.class final enum Lcom/zui/gallery/util/AvatarUtils$Action$28;
.super Lcom/zui/gallery/util/AvatarUtils$Action;
.source "AvatarUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/util/AvatarUtils$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 327
    invoke-direct {p0, p1, p2, v0}, Lcom/zui/gallery/util/AvatarUtils$Action;-><init>(Ljava/lang/String;ILcom/zui/gallery/util/AvatarUtils$1;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "action_ set_photo_to"

    return-object v0
.end method
