.class Lcom/zui/internal/app/MessageController$TextClickableSpan;
.super Landroid/text/style/ClickableSpan;
.source "MessageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/internal/app/MessageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextClickableSpan"
.end annotation


# instance fields
.field private mClickableText:Ljava/lang/CharSequence;

.field private mListener:Lzui/app/MessageDialog$OnDescriptionClickableTextListener;

.field private mText:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/zui/internal/app/MessageController;


# direct methods
.method public constructor <init>(Lcom/zui/internal/app/MessageController;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lzui/app/MessageDialog$OnDescriptionClickableTextListener;)V
    .locals 0

    .line 1091
    iput-object p1, p0, Lcom/zui/internal/app/MessageController$TextClickableSpan;->this$0:Lcom/zui/internal/app/MessageController;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 1092
    iput-object p2, p0, Lcom/zui/internal/app/MessageController$TextClickableSpan;->mText:Ljava/lang/CharSequence;

    .line 1093
    iput-object p3, p0, Lcom/zui/internal/app/MessageController$TextClickableSpan;->mClickableText:Ljava/lang/CharSequence;

    .line 1094
    iput-object p4, p0, Lcom/zui/internal/app/MessageController$TextClickableSpan;->mListener:Lzui/app/MessageDialog$OnDescriptionClickableTextListener;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1099
    iget-object v0, p0, Lcom/zui/internal/app/MessageController$TextClickableSpan;->mListener:Lzui/app/MessageDialog$OnDescriptionClickableTextListener;

    if-eqz v0, :cond_0

    .line 1100
    iget-object v1, p0, Lcom/zui/internal/app/MessageController$TextClickableSpan;->mText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/zui/internal/app/MessageController$TextClickableSpan;->mClickableText:Ljava/lang/CharSequence;

    invoke-interface {v0, p1, v1, v2}, Lzui/app/MessageDialog$OnDescriptionClickableTextListener;->onClickableTextClicked(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    const/4 v0, 0x0

    .line 1106
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
