.class Lcom/zui/gallery/filtershow/category/CategoryTrack$1;
.super Landroid/database/DataSetObserver;
.source "CategoryTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/category/CategoryTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/category/CategoryTrack;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/category/CategoryTrack;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryTrack$1;->this$0:Lcom/zui/gallery/filtershow/category/CategoryTrack;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 46
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 47
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryTrack$1;->this$0:Lcom/zui/gallery/filtershow/category/CategoryTrack;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/category/CategoryTrack;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/category/CategoryTrack$1;->this$0:Lcom/zui/gallery/filtershow/category/CategoryTrack;

    invoke-static {v1}, Lcom/zui/gallery/filtershow/category/CategoryTrack;->access$000(Lcom/zui/gallery/filtershow/category/CategoryTrack;)Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->getCount()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 48
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryTrack$1;->this$0:Lcom/zui/gallery/filtershow/category/CategoryTrack;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/category/CategoryTrack;->fillContent()V

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryTrack$1;->this$0:Lcom/zui/gallery/filtershow/category/CategoryTrack;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/category/CategoryTrack;->invalidate()V

    :goto_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 55
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 56
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryTrack$1;->this$0:Lcom/zui/gallery/filtershow/category/CategoryTrack;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/category/CategoryTrack;->fillContent()V

    return-void
.end method
