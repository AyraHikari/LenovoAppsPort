.class Lcom/zui/gallery/filtershow/category/CategoryPanel$23;
.super Ljava/lang/Object;
.source "CategoryPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/category/CategoryPanel;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

.field final synthetic val$action:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/category/CategoryPanel;Landroid/view/View;)V
    .locals 0

    .line 1381
    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$23;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$23;->val$action:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1384
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$23;->val$action:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    return-void
.end method
