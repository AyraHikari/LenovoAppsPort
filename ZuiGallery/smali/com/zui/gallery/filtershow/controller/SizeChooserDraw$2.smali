.class Lcom/zui/gallery/filtershow/controller/SizeChooserDraw$2;
.super Ljava/lang/Object;
.source "SizeChooserDraw.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->setUp(Landroid/view/ViewGroup;Lcom/zui/gallery/filtershow/controller/Parameter;Lcom/zui/gallery/filtershow/editors/Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw$2;->this$0:Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 162
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw$2;->this$0:Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->isColorClick:Z

    .line 163
    sput-boolean v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isDrawColor:Z

    .line 164
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onClick: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw$2;->this$0:Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;

    iget-object v0, v0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "colorXXX"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw$2;->this$0:Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/Editor;->commitLocalRepresentation()V

    return-void
.end method
