.class Lcom/zui/gallery/app/StateManager$StateEntry;
.super Ljava/lang/Object;
.source "StateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/StateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateEntry"
.end annotation


# instance fields
.field public activityState:Lcom/zui/gallery/app/ActivityState;

.field public data:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Lcom/zui/gallery/app/ActivityState;)V
    .locals 0

    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 584
    iput-object p1, p0, Lcom/zui/gallery/app/StateManager$StateEntry;->data:Landroid/os/Bundle;

    .line 585
    iput-object p2, p0, Lcom/zui/gallery/app/StateManager$StateEntry;->activityState:Lcom/zui/gallery/app/ActivityState;

    return-void
.end method
