.class Lcom/zui/gallery/ui/videoedit/SpeedChooseBar$1;
.super Ljava/lang/Object;
.source "SpeedChooseBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/videoedit/SpeedChooseBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/ui/videoedit/SpeedChooseBar;


# direct methods
.method constructor <init>(Lcom/zui/gallery/ui/videoedit/SpeedChooseBar;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/zui/gallery/ui/videoedit/SpeedChooseBar$1;->this$0:Lcom/zui/gallery/ui/videoedit/SpeedChooseBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 97
    :pswitch_0
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/SpeedChooseBar$1;->this$0:Lcom/zui/gallery/ui/videoedit/SpeedChooseBar;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/videoedit/SpeedChooseBar;->updateChooseIndex(I)V

    goto :goto_0

    .line 94
    :pswitch_1
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/SpeedChooseBar$1;->this$0:Lcom/zui/gallery/ui/videoedit/SpeedChooseBar;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/videoedit/SpeedChooseBar;->updateChooseIndex(I)V

    goto :goto_0

    .line 91
    :pswitch_2
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/SpeedChooseBar$1;->this$0:Lcom/zui/gallery/ui/videoedit/SpeedChooseBar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/videoedit/SpeedChooseBar;->updateChooseIndex(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f08031d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
