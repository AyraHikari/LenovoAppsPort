.class public Lcom/zui/gallery/filtershow/presets/PresetManagementDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "PresetManagementDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAdapter:Lcom/zui/gallery/filtershow/presets/UserPresetsAdapter;

.field private mEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 51
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/presets/PresetManagementDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f0800c3

    if-eq p1, v1, :cond_2

    const v1, 0x7f080275

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/presets/PresetManagementDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->saveCurrentImagePreset(Ljava/lang/String;)V

    .line 65
    iget-object p1, p0, Lcom/zui/gallery/filtershow/presets/PresetManagementDialog;->mAdapter:Lcom/zui/gallery/filtershow/presets/UserPresetsAdapter;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/presets/UserPresetsAdapter;->updateCurrent()V

    .line 66
    iget-object p1, p0, Lcom/zui/gallery/filtershow/presets/PresetManagementDialog;->mAdapter:Lcom/zui/gallery/filtershow/presets/UserPresetsAdapter;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->updateUserPresetsFromAdapter(Lcom/zui/gallery/filtershow/presets/UserPresetsAdapter;)V

    .line 68
    :cond_1
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/presets/PresetManagementDialog;->dismiss()V

    goto :goto_0

    .line 55
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/filtershow/presets/PresetManagementDialog;->mAdapter:Lcom/zui/gallery/filtershow/presets/UserPresetsAdapter;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/presets/UserPresetsAdapter;->clearChangedRepresentations()V

    .line 56
    iget-object p1, p0, Lcom/zui/gallery/filtershow/presets/PresetManagementDialog;->mAdapter:Lcom/zui/gallery/filtershow/presets/UserPresetsAdapter;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/presets/UserPresetsAdapter;->clearDeletedRepresentations()V

    .line 57
    iget-object p1, p0, Lcom/zui/gallery/filtershow/presets/PresetManagementDialog;->mAdapter:Lcom/zui/gallery/filtershow/presets/UserPresetsAdapter;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->updateUserPresetsFromAdapter(Lcom/zui/gallery/filtershow/presets/UserPresetsAdapter;)V

    .line 58
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/presets/PresetManagementDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0b005f

    .line 37
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 39
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/presets/PresetManagementDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/zui/gallery/filtershow/FilterShowActivity;

    const p2, 0x7f080167

    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/presets/PresetManagementDialog;->mEditText:Landroid/widget/EditText;

    const/4 p3, 0x1

    new-array p3, p3, [Landroid/text/InputFilter;

    .line 42
    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v1, 0x0

    aput-object v0, p3, v1

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const p2, 0x7f0800c3

    .line 43
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f080275

    .line 44
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/presets/PresetManagementDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    const p3, 0x7f10013f

    invoke-virtual {p0, p3}, Lcom/zui/gallery/filtershow/presets/PresetManagementDialog;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    return-object p1
.end method
