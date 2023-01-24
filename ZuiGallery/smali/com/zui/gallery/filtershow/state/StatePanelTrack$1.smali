.class Lcom/zui/gallery/filtershow/state/StatePanelTrack$1;
.super Landroid/database/DataSetObserver;
.source "StatePanelTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/state/StatePanelTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/state/StatePanelTrack;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/state/StatePanelTrack;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack$1;->this$0:Lcom/zui/gallery/filtershow/state/StatePanelTrack;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 67
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 68
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack$1;->this$0:Lcom/zui/gallery/filtershow/state/StatePanelTrack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->fillContent(Z)V

    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .line 73
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 74
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/StatePanelTrack$1;->this$0:Lcom/zui/gallery/filtershow/state/StatePanelTrack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/state/StatePanelTrack;->fillContent(Z)V

    return-void
.end method
