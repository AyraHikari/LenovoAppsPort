.class final enum Lcom/zui/gallery/util/AvatarUtils$Action$8;
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

    .line 207
    invoke-direct {p0, p1, p2, v0}, Lcom/zui/gallery/util/AvatarUtils$Action;-><init>(Ljava/lang/String;ILcom/zui/gallery/util/AvatarUtils$1;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "action_month_view"

    return-object v0
.end method
