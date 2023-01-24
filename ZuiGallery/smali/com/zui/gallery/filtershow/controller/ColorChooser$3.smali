.class Lcom/zui/gallery/filtershow/controller/ColorChooser$3;
.super Ljava/lang/Object;
.source "ColorChooser.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/colorpicker/ColorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/controller/ColorChooser;->showColorPicker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/controller/ColorChooser;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/controller/ColorChooser;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser$3;->this$0:Lcom/zui/gallery/filtershow/controller/ColorChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addColorListener(Lcom/zui/gallery/filtershow/colorpicker/ColorListener;)V
    .locals 0

    return-void
.end method

.method public setColor([F)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser$3;->this$0:Lcom/zui/gallery/filtershow/controller/ColorChooser;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/controller/ColorChooser;->changeSelectedColor([F)V

    return-void
.end method
