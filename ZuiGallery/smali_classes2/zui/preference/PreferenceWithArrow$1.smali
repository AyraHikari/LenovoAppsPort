.class Lzui/preference/PreferenceWithArrow$1;
.super Ljava/lang/Object;
.source "PreferenceWithArrow.java"

# interfaces
.implements Lzui/util/PreferenceBase$PreferenceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/preference/PreferenceWithArrow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzui/preference/PreferenceWithArrow;


# direct methods
.method constructor <init>(Lzui/preference/PreferenceWithArrow;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lzui/preference/PreferenceWithArrow$1;->this$0:Lzui/preference/PreferenceWithArrow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refreshSelf()V
    .locals 1

    .line 49
    iget-object v0, p0, Lzui/preference/PreferenceWithArrow$1;->this$0:Lzui/preference/PreferenceWithArrow;

    invoke-static {v0}, Lzui/preference/PreferenceWithArrow;->access$000(Lzui/preference/PreferenceWithArrow;)V

    return-void
.end method
